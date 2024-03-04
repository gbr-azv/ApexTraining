
@isTest
private class TestVerifyDate {

    Date date1 = Date.newInstance(2024, 05, 15);
    Date date2 = Date.newInstance(2024, 05, 20);
    Date date3 = Date.newInstance(2024, 06, 25);

    Integer totalDays = Date.daysInMonth(date1.year(), date1.month());
    Date lastDay = Date.newInstance(date1.year(), date1.month(), totalDays);

    @isTest static testCheckDatesTrue(){
        Date result = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date2, result);
    }

    @isTest static testCheckDatesFalse(){
        Date result = VerifyDate.CheckDates(date1, date3);
        System.assertEquals(lastDay, result);
    }
}