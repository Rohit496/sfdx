public with sharing class AuraContextExample {
    @AuraEnabled
    public static void executeAuraCall() {
        ContextDetector.detectContext();
    }
}
