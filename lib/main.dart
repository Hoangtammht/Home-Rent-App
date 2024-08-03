import 'package:flutter/material.dart';
import 'package:homerentapp/screens/detailproduct.dart';
import 'package:homerentapp/screens/homescreen.dart';
import 'package:homerentapp/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Rent App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: {
        '/': (context) => MenuScreen(),
        '/home': (context) => HomeScreen(),
        '/detail': (context) => DetailProductScreen(),
      },
    );
  }
}
