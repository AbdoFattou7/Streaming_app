import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Egybest", style: TextStyle(fontWeight: FontWeight.bold)),
          elevation: 1,
          backgroundColor: const Color.fromARGB(255, 249, 242, 140),
        ),
        body: Center(
          child: Text("This is the first page", style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
