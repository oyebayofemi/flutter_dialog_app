import 'package:flutter/material.dart';

class Error1Dialog extends StatelessWidget {
  final title;

  Error1Dialog(this.title);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Alert'),
      content: Text(title),
      actions: [
        FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Okay',
              style: TextStyle(color: Colors.blue),
            )),
      ],
    );
  }
}
