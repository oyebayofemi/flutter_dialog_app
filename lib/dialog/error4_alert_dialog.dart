import 'package:flutter/material.dart';

class Error4Dialog extends StatelessWidget {
  final title;

  Error4Dialog(this.title);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          height: 200,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Icon(
                    Icons.warning_rounded,
                    size: 60,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: SizedBox.expand(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Text(title),
                          FlatButton(
                            onPressed: () {},
                            child: Text('okay'),
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -60,
          left: -30,
          child: CircleAvatar(
            radius: 50,
            child: Icon(
              Icons.cancel_outlined,
              size: 60,
            ),
          ),
        )
      ],
    ));
  }
}
