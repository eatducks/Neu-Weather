import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';git

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      // appBar:  AppBar(title: const Text("Neumorphic Weather")),
      body: const Center(
        child: Text("Neumorphic Weather Info"),
      ),
    );
  }
}
