public class StringArrayTest {

    public static List<String> generateStringArray(Integer num) {
        List<String> numbersList = new List<String>();
        for (Integer i = 0; i < num; i++) {
            String toAdd = 'Test ' + i;
            numbersList.add(toAdd);
        }

        return numbersList;
    }
}