import 'dart:core';
import 'dart:core' as prefix0;
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class TranslateResult extends StatelessWidget {
  final File image;
  TranslateResult({Key key, @required this.image}) : super(key: key);
  Widget padding() {
    return Padding(padding: EdgeInsets.all(5.0));
  }

  Widget rowName(prefix0.String text) {
    return Row(
      children: <Widget>[Text("    " + text, style: TextStyle(fontSize: 20))],
    );
  }

  Widget rowBox(prefix0.String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 350,
          height: 150,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    width: 2, color: Colors.blue, style: BorderStyle.solid)),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            color: Colors.white,
            textColor: Colors.black,
          ),
        ),
        Container(
          width: 50,
          height: 150,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    width: 2,
                    color: Colors.lightBlue,
                    style: BorderStyle.solid)),
            child: Icon(
              Icons.play_arrow,
              color: Colors.lightBlue,
            ),
            color: Colors.white,
            textColor: Colors.black,
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Widget oneMoreShot(context) {
    return Container(
      width: 150,
      height: 50,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 2, color: Colors.white, style: BorderStyle.solid)),
        child: Text("再来一拍", style: TextStyle(fontSize: 20)),
        color: Colors.white,
        textColor: Colors.blue,
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
              (Route<dynamic> route) => false);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('HAPUE 乐翻'), backgroundColor: Colors.blue),
        body: Column(
          children: <Widget>[
            padding(),
            Container(
              height: 200,
              child: Image.file(
                  image), //Image.asset('assets/images/slow-property-sign-k-1311.png'),
            ),
            padding(),
            rowName("原文提取"),
            rowBox("Slow"),
            padding(),
            rowName("翻译结果"),
            rowBox("慢行"),
            padding(),
            oneMoreShot(context)
          ],
        ));
  }

  Widget showLoad() {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              child: new CircularProgressIndicator(),
              width: 60.0,
              height: 60.0,
              alignment: Alignment.center,
            )
          ],
        )
      ],
    );
  }
}
