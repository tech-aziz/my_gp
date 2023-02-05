import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'view/home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    // systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Colors.blue, // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyGP',
      theme: ThemeData(
        backgroundColor: Colors.blue
        // primarySwatch: Colors.blue,
      ),
      home: HomePage()
    );
  }
}

