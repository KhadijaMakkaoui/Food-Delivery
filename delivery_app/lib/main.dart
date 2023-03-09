import 'package:delivery_app/screens/home/home.dart';
import 'package:delivery_app/screens/home_page.dart';
import 'package:delivery_app/screens/menu.dart';
import 'package:delivery_app/screens/restaurants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      home: const HomePage(),
      routes: {
        /*'/home': (context) => Home(),*/
        '/menu': (context) => const Menu(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}

