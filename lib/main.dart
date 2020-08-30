import 'package:flutter/material.dart';
import 'screens/loading_screen.dart';

void main() {
  runApp(IOENotice());
}

class IOENotice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
