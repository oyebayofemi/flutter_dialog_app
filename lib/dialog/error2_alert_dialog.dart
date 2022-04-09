import 'package:flutter/material.dart';

class Error2Dialog extends StatelessWidget {
  final title;

  Error2Dialog(this.title);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9),
      ),
      child: Container(
        height: 200,
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Icon(
                  Icons.account_balance_wallet,
                  size: 60,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.orange,
                child: SizedBox.expand(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Expanded(child: Text(title)),
                        ButtonTheme(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: FlatButton(
                              color: Colors.white,
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'okay',
                                style: TextStyle(color: Colors.orange),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
