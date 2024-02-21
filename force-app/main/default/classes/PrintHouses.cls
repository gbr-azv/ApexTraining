public class PrintHouses {
    
    public static void showHouses(){
        
        List<House__c> houses = RettrieveHouses.queryHouses();
        
        for (House__c house : houses)
        
        System.debug(house);
    }
}