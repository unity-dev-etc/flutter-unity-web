import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unity in Flutter Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Unity 화면으로 이동
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UnityScreen()),
            );
          },
          child: Text('Launch Unity'),
        ),
      ),
    );
  }
}

class UnityScreen extends StatefulWidget {
  @override
  _UnityScreenState createState() => _UnityScreenState();
}

class _UnityScreenState extends State<UnityScreen> {
  UnityWidgetController? _unityWidgetController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unity View'),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.yellow,
          child: //Container(),
          UnityWidget(
            onUnityCreated: onUnityCreated,
          ),
        ),
      ),
    );
  }

  void onUnityCreated(UnityWidgetController controller) {
    _unityWidgetController = controller;
  }

  @override
  void dispose() {
    _unityWidgetController?.dispose();
    super.dispose();
  }
}
