import 'dart:io';
import 'package:flutter/material.dart';
import 'pages/translatepage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<MyApp> {
  File _imageFile;
  final _picker = ImagePicker();
  _openGallary(BuildContext context) async {
    PickedFile image = await _picker.getImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = File(image.path);
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    PickedFile image = await _picker.getImage(source: ImageSource.camera);
    // imageFile = File(image.path);
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Make a Choice!"),
            content: SingleChildScrollView(
                child: ListBody(
              children: <Widget>[
                GestureDetector(
                    child: Text("Gallery"),
                    onTap: () {
                      _openGallary(context);
                    }),
                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                GestureDetector(
                    child: Text("Camera"),
                    onTap: () {
                      _openCamera(context);
                    })
              ],
            )),
          );
        });
  }

  Widget _decideImageView() {
    return Container(
        child: _imageFile == null
            ? Text("No image selected. ")
            : RaisedButton(
                padding: EdgeInsets.all(5.0),
                color: Colors.grey[200],
                // child:
                child: new Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(0.0),
                    ),
                    Container(
                      child: Image.file(_imageFile),
                      height: 200,
                    ),
                    Text("点我确认", style: TextStyle(fontSize: 20))
                  ],
                ),
                onPressed: () => Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) =>
                              new TranslatePage(image: _imageFile)),
                    )));
  }

  Widget padding(height) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: height,
      ),
    );
  }

  Widget textLine(text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: Text('HAPUE 乐翻'), backgroundColor: Colors.lightBlue),
      body: Container(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            textLine("HelP U be HAPpy in the New Place"),
            padding(10.0),
            textLine("你好小明，助你快乐"),
            padding(10.0),
            RaisedButton(
              child: Icon(Icons.camera_alt, size: 120, color: Colors.lightBlue),
              onPressed: () {
                _showChoiceDialog(context);
              },
              color: Colors.white,
            ),
            padding(10.0),
            _decideImageView(),
            padding(10.0),
            textLine("Take a photo and konw it!"),
            padding(10.0),
            textLine("拍张照片，你将更懂你的世界"),
          ]),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        backgroundColor: Colors.orange,
        onPressed: () {
          print("Clicked");
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => new TranslatePage()),
          );
        },
      ),
    );
  }
}
