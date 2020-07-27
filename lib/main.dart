import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.deepOrange[500]),
        home: Scaffold(
          appBar: AppBar(title: Text('HAPUE 乐翻')),
          body: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 85.0,
              ),
            ),
            Text(
              "    HelP U be HAPpy in the New Place",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            RaisedButton(
              child: Text('Camera Icon'), // 一个小眼睛图案
              onPressed: () => print('clicked!'),
            ),
            Text(
              "Take a photo and konw it!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
              ),
            ), // shoud here be a douhao?
          ]),
          floatingActionButton: FloatingActionButton.extended(
            onPressed:() => print('clicked!'),
            
            label: Text('Sign in'),
            icon: Icon(Icons.assignment_ind),
            backgroundColor: Colors.amberAccent,
          ),
        ));
  }
}
