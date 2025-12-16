import 'package:flutter/material.dart';
class TrendingSeeallpage extends StatelessWidget {
  const TrendingSeeallpage({super.key});

  // List specifically for the Trending section
  final List<String> trendingMovies = const [
    'assets/images/behind.jpg',
    'assets/images/missing.jpg',
    'assets/images/broadchurch.jpg',
    'assets/images/the asset.jpg',
    'assets/images/the believers.jpg',
    'assets/images/zero day.jpg',
    // You can repeat them or add more to fill the grid
    'assets/images/behind.jpg',
    'assets/images/missing.jpg',
    'assets/images/broadchurch.jpg',
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
          "Trending Now",
          style: TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: trendingMovies.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,          // 3 images per row
            crossAxisSpacing: 10,       // Horizontal gap
            mainAxisSpacing: 10,        // Vertical gap
            childAspectRatio: 0.7,      // Adjusts height-to-width ratio for posters
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(trendingMovies[index]),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}