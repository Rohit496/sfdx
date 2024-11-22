@RestResource(urlMapping='/detectContext')
global with sharing class RESTContextExample {
    @HttpGet
    global static void executeRestCall() {
        ContextDetector.detectContext();
    }
}
