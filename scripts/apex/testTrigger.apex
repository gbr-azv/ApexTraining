
Account acc = new Account();
acc.Name = 'Kasparov';

insert acc;

Account updateAcc = [SELECT Id, Name FROM Account WHERE Id =: acc.Id];

updateAcc.Name = 'Albert Einstein';

update updateAcc;

Account deleteAcc = [SELECT Id FROM Account WHERE Id =: updateAcc.Id];

delete deleteAcc;

Account undeleteAcc = [SELECT Id FROM Account Where Id =: deleteAcc.Id ALL ROWS];

undelete undeleteAcc;

Account restoredAcc = [SELECT Id FROM Account Where Id =: undeleteAcc.Id];

System.debug(restoredAcc);