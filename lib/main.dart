import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:mailer/smtp_server/gmail.dart';

void main() {
  runApp(MyApp());
}
//second version

sendEmail() async {
  final Email email = Email(
    body: 'Email body',
    subject: 'Email subject',
    recipients: ['___'],
    isHTML: false,
  );

  await FlutterEmailSender.send(email);
}

//first version
// sendMail() async {
//   String username = 'khajili98@gmail.com';
//   String password = '3003880Kam';

//   // Create our message.
//   final message = Message()
//     ..from = Address(username, 'Kamran')
//     ..recipients.add('shaban.haciyev@gmail.com')
//     ..subject = 'Test Dart Mailer library :: 😀 :: ${DateTime.now()}'
//     ..text = 'This is the plain text.\nThis is line 2 of the text part.'
//     ..html = "<h1>Test</h1>\n<p>Hey! Here's some HTML content</p>";

//   SmtpServer? smtpServer;

//   try {
//     // Setting up Google SignIn
//     final googleSignIn = GoogleSignIn.standard(scopes: [
//       'khajili98@gmail.com',
//       'https://www.googleapis.com/auth/gmail.send'
//     ]);

//     // Signing in
//     final account = await googleSignIn.signIn();

//     if (account == null) {
//       // User didn't authorize
//       return;
//     }

//     final auth = await account.authentication;

//     // Creating SMTP server from the access token
//     smtpServer = gmailSaslXoauth2(username, auth.accessToken!);
//   } on Exception catch (e) {
//     // ignore: todo
//     // TODO: Handle auth error
//     print(e);
//   }

// // Ready to send a message now

//   // Use the SmtpServer class to configure an SMTP server:
//   // final smtpServer = SmtpServer('smtp.domain.com');
//   // See the named arguments of SmtpServer for further configuration
//   // options.

//   try {
//     final sendReport = await send(message, smtpServer!);
//     print('Message sent: ' + sendReport.toString());
//   } on MailerException catch (e) {
//     print('Message not sent.');
//     for (var p in e.problems) {
//       print('Problem: ${p.code}: ${p.msg}');
//     }
//   }

//   var connection = PersistentConnection(smtpServer!);

//   // Send the first message
//   await connection.send(message);

//   // send the equivalent message

//   // close the connection
//   await connection.close();
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                ),
                Text("salam"),
                TextButton(
                    onPressed: () {
                      print("salam");
                      sendEmail();
                    },
                    child: Text("Send"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
