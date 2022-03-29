public class GroceryServices{
    public List<Transaction__c> filterValidTransactions(List<Transaction__c> transactions){
        for (Integer i=(transactions.size()-1);i>=0;i--){
            if(transactions[i].Status__c.equals('Archived') || transactions[i].Status__c.equals('Cancelled')){
                transactions.remove(i);
            }
        } 
        return transactions;
    }
    public Integer calculateTotalAmount(List<Line_Item__c> lineItems){
        Integer total_amount = 0;
        for(Line_Item__c lineItem:lineItems){
            total_amount += lineItem.Amount__c.intValue();
        }
        return total_amount;
    }
}