public class SOQLDemo {
    public void searchAccount(String search) {
        String name = '%' + search + '%';
        List<Account> accList = [
            SELECT Id, Name
            FROM Account
            WHERE Name LIKE :name
        ];
        Set<Id> accIdsSet = new Set<Id>();
        for (Account acc : accList) {
            accIdsSet.add(acc.Id);
        }
        System.debug('accIdSet:::' + accIdsSet);
        System.debug('accIdSet:::' + JSON.serializePretty(accIdsSet));
        System.debug('accList::: ' + accList);
        System.debug('accList' + JSON.serializePretty(accList));
    }
}
