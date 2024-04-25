// 1 A
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String centerText = 'Tap the buttons on the navigation bar';

  // void showMessage(BuildContext context, String message) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(content: Text(message)),
  //   );
  // }

  void updateCenterText(String newText) {
    setState(() {
      centerText = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter UI Demo'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // showMessage(context, 'Hamburger menu clicked');
            updateCenterText('Hamburger button clicked');
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_left),
            onPressed: () {
              // showMessage(context, 'Left button clicked');
              updateCenterText('Left button clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_right),
            onPressed: () {
              // showMessage(context, 'Right button clicked');
              updateCenterText('Right button clicked');
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          centerText,
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}



// 1 B
// import 'package:flutter/material.dart';
// void main(){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter'),
//           backgroundColor: Colors.blue,
//           centerTitle: true,
//         ),
//         body: Row(
//           children: [
//             Container(
//               child: Center(
//                 child: Text(
//                   'heelo',
//                   style: TextStyle(
//                     color: Colors.black,
//                     backgroundColor: Colors.yellow,
//                   ),
//                 ),
//               ),
//               padding: const EdgeInsets.all(50),
//             ),
//             Container(
//               child: Center(
//                 child: Text(
//                   'heelo',
//                   style: TextStyle(
//                     color: Colors.pink,
//                     backgroundColor: Colors.yellow,
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
