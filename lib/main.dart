import 'package:flutter/material.dart';
import 'package:profile/first/purposeful_messaging_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SADC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: PurposefulMessagingScreen(),
    );
  }
}


