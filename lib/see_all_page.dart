import 'package:flutter/material.dart';

class Seeallpage extends StatelessWidget {
  const Seeallpage({super.key});

  final List<String> moviePosters = const [
    'assets/images/money heist.jpg',
    'assets/images/stranger things.jpg',
    'assets/images/squid game.jpg',
    'assets/images/dark.jpg',
    'assets/images/breaking bad.jpg',
    'assets/images/behind.jpg',
    'assets/images/missing.jpg',
    'assets/images/broadchurch.jpg',
    'assets/images/the asset.jpg',
    'assets/images/the believers.jpg',
    'assets/images/zero day.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          "Popular Movies",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // 1. Using GridView.builder for performance
        child: GridView.builder(
          itemCount: moviePosters.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 3 posters per row
            crossAxisSpacing: 8, // Horizontal space
            mainAxisSpacing: 8, // Vertical space
            childAspectRatio: 2 / 3, // Matches standard movie poster ratio
          ),
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(4), // Slight rounded corners
              child: Image.asset(moviePosters[index], fit: BoxFit.cover),
            );
          },
        ),
      ),
    );
  }
}
