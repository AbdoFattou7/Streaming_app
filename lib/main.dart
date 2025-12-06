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
        backgroundColor: const Color.fromARGB(70, 0, 0, 0),
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
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular on Netflix",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text(
                        "see all",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 5,
                    children: [
                      Image.asset(
                        'assets/images/money heist.jpg',
                        width: 100,
                        height: 150,
                      ),
                      Image.asset(
                        'assets/images/stranger things.jpg',
                        width: 100,
                        height: 150,
                      ),
                      Image.asset(
                        'assets/images/squid game.jpg',
                        width: 100,
                        height: 150,
                      ),
                      Image.asset(
                        'assets/images/dark.jpg',
                        width: 100,
                        height: 150,
                      ),
                      Image.asset(
                        'assets/images/breaking bad.jpg',
                        width: 100,
                        height: 150,
                      ),
                      Image.asset(
                        'assets/images/money heist.jpg',
                        width: 100,
                        height: 150,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending Now",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text(
                        "see all",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 5,
                    children: [
                      Image.asset(
                        'assets/images/behind.jpg',
                        width: 100,
                        height: 150,
                      ),
                      Image.asset(
                        'assets/images/missing.jpg',
                        width: 100,
                        height: 150,
                      ),
                      Image.asset(
                        'assets/images/broadchurch.jpg',
                        width: 100,
                        height: 150,
                      ),
                      Image.asset(
                        'assets/images/the asset.jpg',
                        width: 100,
                        height: 150,
                      ),
                      Image.asset(
                        'assets/images/the believers.jpg',
                        width: 100,
                        height: 150,
                      ),
                      Image.asset(
                        'assets/images/zero day.jpg',
                        width: 100,
                        height: 150,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
