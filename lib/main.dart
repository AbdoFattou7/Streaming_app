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
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          actions: [
            IconButton(
              onPressed: null,

              icon: Icon(Icons.account_circle, color: Colors.white),
            ),
          ],
          centerTitle: true,
          title: SizedBox(
            height: 30,
            child: Image.asset('assets/images/Netflix logo.png'),
          ),
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        drawer: Drawer(child: ListView()),
        body: Center(
          child: Text(
            "This is the first page",
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
    );
  }
}
