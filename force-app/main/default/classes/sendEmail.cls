public class sendEmail {

    public static void send() {

        Messaging.SingleEmailMessage createEmail = new Messaging.SingleEmailMessage();
        createEmail.setToAddresses(new List<String> {'gabriel.si.solucoes@gmail.com'});
        createEmail.setSubject('Testing apex email messages tool.');
        createEmail.setPlainTextBody('It`s supposed to be a message.');

        Messaging.sendEmail(new List<Messaging.SingleEmailMessage> {createEmail});
    }

}