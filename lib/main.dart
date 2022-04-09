import 'package:dialog_app/dialog/error2_alert_dialog.dart';
import 'package:dialog_app/dialog/error3_alert_dialog.dart';
import 'package:dialog_app/dialog/error4_alert_dialog.dart';
import 'package:dialog_app/dialog/forgot_username_email_password_dialog.dart';
import 'package:dialog_app/error1_alert_dialog.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: DialogApp(),
  ));
}

class DialogApp extends StatelessWidget {
  const DialogApp({Key? key}) : super(key: key);

  final String error1 = 'This is the first error';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog APP'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
                color: Colors.amber,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Error1Dialog('This is the first error');
                      });
                },
                child: Text('Error 1')),
            FlatButton(
                color: Colors.blue,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Error2Dialog('This is the second error');
                    },
                  );
                },
                child: Text('Error 2')),
            FlatButton(
                color: Colors.green,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Error3Dialog(
                          'You dont have access to this account');
                    },
                  );
                },
                child: Text('Error 3')),
            FlatButton(
              color: Colors.pink,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Error4Dialog('Testing the error');
                  },
                );
              },
              child: Text('Error 4'),
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return ForgotUsernameEmailPasswordDialog();
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.only(right: 2),
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Username/Email/Password?',
                  style: TextStyle(
                      color: Color(0xff991F36),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 15),
                  //textAlign: TextAlign.right,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
