public class DMLDemo {
    public static void insertAccount() {
        Account acc = new Account();
        acc.Name = 'Demo DML - 1';
        acc.Rating = 'Hot';
        acc.Industry = 'Banking';
        insert acc;
    }
    public static void insetBulkData(List<String> accountNames) {
        List<Account> accList = new List<Account>();
        for (String acc : accountNames) {
            Account a = new Account();
            a.Name = String.valueOf(accountNames);
            a.Rating = 'Cold';
            a.Industry = 'Banking';
            accList.add(a);
        }
        insert accList;
    }
}
