import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
      theme: ThemeData(
        primaryColor: Colors.blue, // Customize primary color
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String _appBarTitle = 'MailScanner';
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('MailScanner Screen'),
    Text('Primary Screen'),
    Text('Social Screen'),
    Text('Promotions Screen'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          _appBarTitle = 'MailScanner';
          break;
        case 1:
          _appBarTitle = 'Primary';
          break;
        case 2:
          _appBarTitle = 'Social';
          break;
        case 3:
          _appBarTitle = 'Promotions';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Background color of the navigation bar
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Primary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Social',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Promotions',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 7, 134, 79), // Color of selected item
        unselectedItemColor:  Colors.blue, // Color of unselected items
        onTap: _onItemTapped,
      ),
    );
  }
}





// VIK CODE BELOW - 

// import 'package:flutter/material.dart';
// import 'package:device_preview/device_preview.dart';

// void main() {
//   runApp(
//     DevicePreview(
//       enabled: true,
//       builder: (context) => MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: true,
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool isMenuOpen = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Your App Title'),
//         backgroundColor: Colors.purple,
//       ),
//       backgroundColor: Colors.white,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             isMenuOpen = !isMenuOpen;
//           });
//         },
//         backgroundColor: Colors.purple,
//         child: Icon(Icons.menu),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
//       bottomNavigationBar: isMenuOpen ? buildMenu() : null,
//     );
//   }

//   Widget buildMenu() {
//     return BottomAppBar(
//       color: Colors.purple,
//       shape: CircularNotchedRectangle(),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           IconButton(
//             onPressed: () {
//               // Handle profile click
//               // You can replace this with your own logic
//             },
//             icon: Icon(Icons.person, color: Colors.white),
//           ),
//           IconButton(
//             onPressed: () {
//               // Handle other section click
//               // You can replace this with your own logic
//             },
//             icon: Icon(Icons.more_vert, color: Colors.white),
//           ),
//           IconButton(
//             onPressed: () {
//               // Handle another section click
//               // You can replace this with your own logic
//             },
//             icon: Icon(Icons.more_horiz, color: Colors.white),
//           ),
//         ],
//       ),
//     );
//   }
// }
