public class RettrieveHouses {
	
    public static List<House__c> queryHouses(){
        
		return [SELECT Id, Name, Address__c FROM House__c];
    }
}