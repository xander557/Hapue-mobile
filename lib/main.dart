import 'package:flutter/material.dart';
import 'pages/translatepage.dart';
// void main() => runApp(Myapp());
// void main() {
//   runApp(MaterialApp(
//     title: 'Navigation Basics',
//     home: Myapp(),
//   ));
// } 
// class Myapp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         theme: ThemeData(primaryColor: Colors.deepOrange[500]),
//         home: Scaffold(
//           appBar: AppBar(title: Text('HAPUE 乐翻'), backgroundColor: Colors.blue,),
//           body: Column(children: [
            
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 vertical: 85.0,
//               ),
//             ),
//             Text(
//               "       HelP U be HAPpy in the New Place",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 20.0,
//                 fontStyle: FontStyle.normal,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 vertical: 10.0,
//               ),
//             ),
//             Text(
//               "你好小明，助你快乐",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 20.0,
//                 fontStyle: FontStyle.normal,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 vertical: 30.0,
//               ),
//             ),
//             RaisedButton(
//               child: Icon(Icons.camera_alt, size: 120, color: Colors.black),
//               // child: Text('Camera Icon'), // 一个小眼睛图案
//               onPressed: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => SecondRoute()),
//             ),
//             color: Colors.white,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 vertical: 20.0,
//               ),
//             ),
//             Text(
//               "Take a photo and konw it!",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 20.0,
//                 fontStyle: FontStyle.normal,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//              Padding(
//               padding: EdgeInsets.symmetric(
//                 vertical: 10.0,
//               ),
//             ),
//             Text(
//               "拍张照片，你将更懂你的世界",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 20.0,
//                 fontStyle: FontStyle.normal,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ), // shoud here be a douhao?
//           ]),
//           floatingActionButton: FloatingActionButton.extended(
//             onPressed:() => print('clicked!'),
            
//             label: Text('Sign in'),
//             icon: Icon(Icons.assignment_ind),
//             backgroundColor: Colors.amberAccent,
//           ),
//         ));
//   }
// }
void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
} 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('HAPUE 乐翻'), backgroundColor: Colors.blue
      ),
      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
            // Padding(
            //   padding: EdgeInsets.symmetric(
            //     vertical: 85.0,
            //   ),
            // ),
            Text(
              "       HelP U be HAPpy in the New Place",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
              ),
            ),
            Text(
              "你好小明，助你快乐",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30.0,
              ),
            ),
            RaisedButton(
              child: Icon(Icons.camera_alt, size: 120, color: Colors.black),
              // child: Text('Camera Icon'), // 一个小眼睛图案
              onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            ),
            color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20.0,
              ),
            ),
            Text(
              "Take a photo and konw it!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
             Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
              ),
            ),
            Text(
              "拍张照片，你将更懂你的世界",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ), // shoud here be a douhao?
          ]),
          // floatingActionButton: FloatingActionButton.extended(
          //   onPressed:() => print('clicked!'),
            
          //   label: Text('Sign in'),
          //   icon: Icon(Icons.assignment_ind),
          //   backgroundColor: Colors.amberAccent,
          // ),)
      
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        backgroundColor: Colors.orange,
        onPressed: () {
          print("Clicked");
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => new SecondRoute()),
          );
        },
      ),
    );
  }
}
