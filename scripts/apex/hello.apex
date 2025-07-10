List<Contact> conList = new List<Contact>{
    new Contact(),
    new Contact(),
    new Contact()
};
List<Database.SaveResult> srList = Database.insert(conList, false);
for (Database.SaveResult sr : srList) {
    if (sr.isSuccess()) {
        System.debug(
            'Successfully inserted contact. Contact ID: ' + sr.getId()
        );
    } else {
        List<Database.Error> errors = sr.getErrors();
        String errorMessages = String.join(errors, '||| ');
        System.debug('Error inserting contact: ' + errorMessages);
    }
}
