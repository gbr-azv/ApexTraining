// Create the list of sObjects to insert
List<Account> acctList = new List<Account>();
acctList.add(new Account(Name='Acme1'));
acctList.add(new Account(Name='Acme2'));

// DML statement
System.debug(acctList);

List<String> test = StringArrayTest.generateStringArray(5);
System.debug(test);