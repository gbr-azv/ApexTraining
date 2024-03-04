
@isTest
private class TestVerifyDate {

    static Date date1 = Date.newInstance(2024, 05, 15);
    static Date date2 = Date.newInstance(2024, 05, 20);
    static Date date3 = Date.newInstance(2024, 06, 25);

    static Integer totalDays = Date.daysInMonth(date1.year(), date1.month());
    static Date lastDay = Date.newInstance(date1.year(), date1.month(), totalDays);

    @isTest static void testCheckDatesTrue(){
        Date result = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date2, result);
    }

    @isTest static void testCheckDatesFalse(){
        Date result = VerifyDate.CheckDates(date1, date3);
        System.assertEquals(lastDay, result);
    }
}