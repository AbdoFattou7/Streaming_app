import 'package:flutter/material.dart';
import 'package:oss_project/accountpage.dart';
import 'package:oss_project/see_all_page.dart';
import 'package:oss_project/trending_seeallpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Simplified for a cleaner look
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AccountPage()),
              );
            },
            icon: const Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
        centerTitle: true,
        title: SizedBox(
          height: 30,
          child: Image.asset('assets/images/Netflix logo.png'),
        ),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Popular Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular on Netflix",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Seeallpage(),
                        ),
                      );
                    },
                    child: const Text(
                      "see all",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _moviePoster('assets/images/money heist.jpg'),
                    _moviePoster('assets/images/stranger things.jpg'),
                    _moviePoster('assets/images/squid game.jpg'),
                    _moviePoster('assets/images/dark.jpg'),
                    _moviePoster('assets/images/breaking bad.jpg'),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // Trending Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Trending Now",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TrendingSeeallpage(),
                        ),
                      );
                    },
                    child: const Text(
                      "see all",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _moviePoster('assets/images/behind.jpg'),
                    _moviePoster('assets/images/missing.jpg'),
                    _moviePoster('assets/images/broadchurch.jpg'),
                    _moviePoster('assets/images/the asset.jpg'),
                    _moviePoster('assets/images/the believers.jpg'),
                    _moviePoster('assets/images/zero day.jpg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget to reduce code repetition and errors
  Widget _moviePoster(String path) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Image.asset(path, width: 100, height: 150, fit: BoxFit.cover),
    );
  }
}
