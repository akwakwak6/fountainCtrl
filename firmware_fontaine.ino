
#include <WiFi.h>
#include <ESPmDNS.h>
#include <WiFiUdp.h>
#include <EEPROM.h>
#include <ArduinoOTA.h>
#include "SPIFFS.h"
#include <ESP8266FtpServer.h>
#include <Adafruit_NeoPixel.h>

char* ssid = "SSID";
char* password = "password";    

////IO
const int numOfLeds = 23;
const int cmdLedPin = 14;  
const int powerLedPin = 15;
const int pompePin = 2;

boolean pompeState = 0; 
boolean ledsState = 0; 

int colorR = 255;
int colorG = 0;
int colorB = 255;

Adafruit_NeoPixel pixels = Adafruit_NeoPixel(numOfLeds, cmdLedPin, NEO_GRB + NEO_KHZ800);

WiFiServer TelnetServer(23); // Telnet Server Declaration port 23
WiFiClient SerialOTA;     // Telnet Client Declaration 
bool haveClient = false; //client detection flag

///FTP
FtpServer ftpSrv;

///HTTP server
WiFiServer server(80);
String HTTP_req;
String htmlPage;

void setup() {

  pixels.begin(); // Initializes the NeoPixel library
  pixels.setBrightness(100); // Value from 0 to 100%

  EEPROM.begin(512);
  colorR = EEPROM.read(0);
  colorG = EEPROM.read(1);
  colorB = EEPROM.read(2);

  pinMode(pompePin, OUTPUT);      
  digitalWrite(pompePin, LOW);

  pinMode(powerLedPin, OUTPUT);      
  digitalWrite(powerLedPin, LOW);

  WiFi.setHostname("Fontaine");  
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  while (WiFi.waitForConnectResult() != WL_CONNECTED) {
    delay(5000);
    ESP.restart();
  }

  ArduinoOTA
    .onStart([]() {
      String type;
      if (ArduinoOTA.getCommand() == U_FLASH)
        type = "sketch";
      else // U_SPIFFS
        type = "filesystem";

      // NOTE: if updating SPIFFS this would be the place to unmount SPIFFS using SPIFFS.end()
      Serial.println("Start updating " + type);
    })
    .onEnd([]() {
      Serial.println("\nEnd");
    })
    .onProgress([](unsigned int progress, unsigned int total) {
      Serial.printf("Progress: %u%%\r", (progress / (total / 100)));
    })
    .onError([](ota_error_t error) {
      Serial.printf("Error[%u]: ", error);
      if (error == OTA_AUTH_ERROR) Serial.println("Auth Failed");
      else if (error == OTA_BEGIN_ERROR) Serial.println("Begin Failed");
      else if (error == OTA_CONNECT_ERROR) Serial.println("Connect Failed");
      else if (error == OTA_RECEIVE_ERROR) Serial.println("Receive Failed");
      else if (error == OTA_END_ERROR) Serial.println("End Failed");
    });

  ArduinoOTA.begin();


  TelnetServer.begin();
  TelnetServer.setNoDelay(true);

  SPIFFS.begin(true);
  ftpSrv.begin("admin","admin"); 

  server.begin();
  htmlPage = getHtml();
  
}

void loop() {
  
  ArduinoOTA.handle();

  ftpSrv.handleFTP();  

  if (!haveClient) {
    // Check for new client connections.
    SerialOTA = TelnetServer.available();
    if (SerialOTA) {
      haveClient = true;
    }
  } else if (!SerialOTA.connected()) {
    // The current client has been disconnected.
    SerialOTA.stop();
    SerialOTA = WiFiClient();
    haveClient = false;
  }

  WiFiClient client = server.available();
  if (client) {  // got client?
        boolean currentLineIsBlank = true;
        while (client.connected()) {
            if (client.available()) {   // client data available to read
                char c = client.read(); // read 1 byte (character) from client
                HTTP_req += c;  // save the HTTP request 1 char at a time
                if (c == '\n' && currentLineIsBlank) {
                    Serial.println("send htttp respond");
                    client.println("HTTP/1.1 200 OK");
                    client.println("Content-Type: text/html");
                    client.println("Connection: close");
                    client.println("\n"+responseHtmlRequest(HTTP_req));
                    Serial.println();
                    Serial.println(HTTP_req);
                    HTTP_req = "";
                    break;
                }
                if (c == '\n') {
                    currentLineIsBlank = true;
                } 
                else if (c != '\r') {
                    currentLineIsBlank = false;
                }
            } // end if (client.available())
        } // end while (client.connected())
        delay(1);      // give the web browser time to receive the data
        client.stop(); // close the connection
    } 
  
}

String responseHtmlRequest(String req){

      if (req.indexOf("GET / HTTP/1.1") > -1) {
      Serial.println("send web");
      return htmlPage;
      }
      if (req.indexOf("GET /?setColorRed=") > -1) {
        Serial.println("set COLOR LED");
        int ptr = 18;
        String strVal;
        char c = req.charAt(ptr);
        while(isDigit(c)){
          strVal+=c;
          ptr++;
          c = req.charAt(ptr);
        }
        colorR = strVal.toInt();
        ptr += 15;
        strVal="";
        c = req.charAt(ptr);
        while(isDigit(c)){
          strVal+=c;
          ptr++;
          c = req.charAt(ptr);
        }
        colorG =  strVal.toInt();
        ptr += 14;
        strVal="";
        c = req.charAt(ptr);
        while(isDigit(c)){
          strVal+=c;
          ptr++;
          c = req.charAt(ptr);
        }
        
        colorB =  strVal.toInt();
        EEPROM.write(0, colorR); 
        EEPROM.write(1, colorG); 
        EEPROM.write(2, colorB); 
        EEPROM.commit(); 
        if(ledsState){
          startLed(false);
          delay(200);
          startLed(true);
        }
        return "OK";
    }
    if (HTTP_req.indexOf("GET /?fontaine=") > -1) {
      Serial.println("fontaine");
      if (HTTP_req.indexOf("START") > -1) {
        pompeState=true;
        digitalWrite(pompePin, HIGH);
        startLed(true);
      }
      if (HTTP_req.indexOf("STOP") > -1) {
        pompeState=false;
        digitalWrite(pompePin, LOW);
        startLed(false);
      }
      return "OK";
    }
    if (HTTP_req.indexOf("GET /?pompe=") > -1) {
      Serial.println("pompe");
      if (HTTP_req.indexOf("START") > -1) {
        pompeState=true;
        digitalWrite(pompePin, HIGH);
      }
      if (HTTP_req.indexOf("STOP") > -1) {
        pompeState=false;
        digitalWrite(pompePin, LOW);
      }
      return "OK";
    }
    if (HTTP_req.indexOf("GET /?leds=") > -1) {
      Serial.println("led");
      if (HTTP_req.indexOf("START") > -1) {
        startLed(true);
      }
      if (HTTP_req.indexOf("STOP") > -1) {
        startLed(false);
      }
      return "OK";
    }
    if (HTTP_req.indexOf("GET /?update") > -1) {
      Serial.println("update");
      String ret;
      if(pompeState)  ret="true,";
      else            ret="false,";
      if(ledsState)  ret+="true,";
      else            ret+="false,";
      ret+= String(colorR);
      ret+=",";
      ret+= String(colorG);
      ret+=",";
      ret+= String(colorB);
      ret+=",";
      ret+= "13";
      Serial.println(ret);
      return ret;
    }
    return "error ?";
  
}


String getHtml(){

  File file = SPIFFS.open("/index.html");
  if(!file){
    Serial.println("Failed to open file for reading");
    return "error 404";
  }
  return file.readString();
  
}


void startLed(bool start){

  if(ledsState!=start){
    digitalWrite(powerLedPin,  start);
    if(start){ 
      for(int i=0;i<numOfLeds;i++){
        pixels.setPixelColor(i, pixels.Color(colorR,colorG,colorB)); 
        pixels.show();
      }
    }else { 
      for(int i=0;i<numOfLeds;i++){
        //pixels.setPixelColor(i, pixels.Color(0,0,0)); 
        pixels.clear();
        pixels.show();
      }
    }
  }
  ledsState = start;
}
