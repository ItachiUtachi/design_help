// import 'package:flutter/material.dart';

// void main(){
//   runApp(Home());
// }

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Geeks for Geeks"),
//           backgroundColor: Colors.purple,
//         ),
//         body: Container(
//           color: Colors.blue,
//           height: MediaQuery.of(context).size.height / 2,
//           width: MediaQuery.of(context).size.width / 2,
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Aditya"),
          backgroundColor: Colors.green,
        ),
        body: MediaQueryExample(),
      ),
    );
  }
}

class MediaQueryExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    double height = mediaQueryData.size.height;
    double width = mediaQueryData.size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        color: Colors.deepOrange,
        height: height / 2,
        width: width / 2,
      ),
    );
  }
}


