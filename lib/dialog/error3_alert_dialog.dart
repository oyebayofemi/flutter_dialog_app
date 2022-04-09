import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Error3Dialog extends StatelessWidget {
  final title;

  Error3Dialog(this.title);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.center,
        children: [
          Positioned(
            child: CircleAvatar(
              backgroundColor: Colors.orange,
              radius: 60,
              child: Icon(
                Icons.warning_amber_rounded,
                size: 70,
                color: Colors.white,
              ),
            ),
            top: -60,
          ),
          Container(
            height: 230,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
                  child: Container(
                      child: Text(
                    'Warning!!! ',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )),
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                    child: SizedBox.expand(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  title,
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ButtonTheme(
                              minWidth: 200,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: FlatButton(
                                  color: Colors.grey[200],
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'okay',
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
