public class AccountDuplicationHandler {
    public static void duplicateAccounts() {
        List<Account> originalAccounts = [SELECT Id, Name FROM Account];
        List<Account> anudeepAccounts = new List<Account>();
        
        for (Account acc : originalAccounts) {
            // Creating new Anudeep Account records
            Account newAccount = new Account();
            newAccount.Name = 'testing 123 anudeep';
            newAccount.Original_Name__c = acc.Name; // Assuming you have a field to store the original name
            anudeepAccounts.add(newAccount);
        }
        
        if (!anudeepAccounts.isEmpty()) {
            // Insert the new Anudeep Accounts
            insert anudeepAccounts;
        }
    }
}