import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key?key,}) :super(key: key);
  final String title='';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> images = [
    "images/download.jpg",
    "images/banana.jpg",
    "images/orange.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("layout"),
        ),
        body:ListView.builder(
          itemBuilder: (BuildContext,index){ 
            return Card( 
              child:ListTile( 
              leading:CircleAvatar(
              backgroundImage:AssetImage(images[index]),), 
              // title:Text("hello"), 
              // subtitle:Text("world"),             
              ),     
              );        
               }, 
               itemCount:images.length,
      ),
    ),
    );
  }
}





// GRID VIEW - 


// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   List<String> images = [
//     "images/download.jpg",
//     "images/banana.jpg",
//     "images/orange.jpg"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Layout"),
//         ),
//         body: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2, // Number of columns
//             crossAxisSpacing: 4.0, // Spacing between columns
//             mainAxisSpacing: 4.0, // Spacing between rows
//           ),
//           itemBuilder: (BuildContext context, int index) {
//             return Card(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Expanded(
//                     child: Image.asset(
//                       images[index],
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "",
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         Text(""),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//           itemCount: images.length,
//         ),
//       ),
//     );
//   }
// }

in pubspec.ymal
  assets:
     - images/download.jpg
     - images/banana.jpg
     - images/orange.jpg
