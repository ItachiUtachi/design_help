
### MAIN.DART - 
  import 'package:flutter/material.dart';
  import 'primarypage.dart';
  import 'inbox.dart';
  import 'socialpage.dart';
  import 'promotions.dart';
  import 'package:device_preview/device_preview.dart';

  void main() {
    runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => MyApp(),
      ),
    );
  }

  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyStatefulWidget(),
      );
    }
  }

  class MyStatefulWidget extends StatefulWidget {
    MyStatefulWidget({Key? key}) : super(key: key);

    @override
    _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
  }

  class _MyStatefulWidgetState extends State<MyStatefulWidget> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Navigation Drawer'),
        ),
        drawer: Drawer(
          elevation: 20.0,
          backgroundColor: Color.fromRGBO(192, 196, 255, 1),
          child: Column(
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountName: Text("Vikhyat Rai"),
                accountEmail: Text("vikhyatrit121@gst.sies.edu.in"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 218, 199, 255),
                  child: Text("VR"),
                ),
              ),
              ListTile(
                title: const Text("Inbox"),
                leading: const Icon(Icons.mail),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Mailpage()));
                },
              ),
              ListTile(
                title: const Text("Primary"),
                leading: const Icon(Icons.inbox),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Primarypage()));
                },
              ),
              const Divider(
                height: 0.1,
              ),
              ListTile(
                title: const Text("Social"),
                leading: Icon(Icons.people),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Socialpage()));
                },
              ),
              ListTile(
                title: const Text("Promotions"),
                leading: Icon(Icons.local_offer),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Promotionspage()));
                },
              )
            ],
          ),
        ),
      );
    }
  }
  
  #### INBOX.DART - 
  
import 'package:flutter/material.dart';
export 'inbox.dart';

class Mailpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mail Screen"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Mail Screen',
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}


#### PRIMARY.DART - 
import 'package:flutter/material.dart';
export 'primarypage.dart';

class Primarypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Promotion Page"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('TE-IT'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}


### PROMOTION.DART - 
import 'package:flutter/material.dart';
export 'promotions.dart';

class Promotionspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Promotion Page"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('TE-IT'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}


#### SOCIAL.DART - 
import 'package:flutter/material.dart';
export 'socialpage.dart';

class Socialpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accounts you follow"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Social Media'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

///////////// no need

void main() {
  runApp(const MyApp());
}
