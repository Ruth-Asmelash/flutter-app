import 'package:flutter/material.dart';
import 'package:myapp/chat.dart';

// ignore: use_key_in_widget_constructors
class LoginPag extends StatefulWidget {
  Icon fieldicon;
  String fieldtext;

  LoginPag(this.fieldicon, this.fieldtext);

  @override
  State<LoginPag> createState() => _LoginPagState();
}

class _LoginPagState extends State<LoginPag> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Chat()),
            ));
    Container(
      width: 300,
      height: 60,
      child: Material(
        elevation: 0,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: widget.fieldicon,
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                width: 200,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: widget.fieldtext,
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
