import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Gestures Demo'),
        ),
        body: GestureDemo(),
      ),
    );
  }
}

class GestureDemo extends StatefulWidget {
  @override
  _GestureDemoState createState() => _GestureDemoState();
}

class _GestureDemoState extends State<GestureDemo> {
  String gestureResult = 'No gesture detected';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          gestureResult = 'Tap detected';
        });
      },
      onDoubleTap: () {
        setState(() {
          gestureResult = 'Double Tap detected';
        });
      },
      onLongPress: () {
        setState(() {
          gestureResult = 'Long Press detected';
        });
      },
      onPanUpdate: (details) {
        setState(() {
          gestureResult =
              'Drag detected\nDelta: ${details.primaryDelta?.toStringAsFixed(2)}';
        });
      },
      child: Container(
        color: Colors.blue,
        width: 200,
        height: 200,
        alignment: Alignment.center,
        child: Text(
          gestureResult,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

