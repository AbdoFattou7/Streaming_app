import 'package:flutter/material.dart';
import 'package:oss_project/accountpage.dart';
import 'package:oss_project/downloads_page.dart';
import 'package:oss_project/search_page.dart';
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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // List of screens for the Bottom Navigation Bar
  // List of screens for the Bottom Navigation Bar
  final List<Widget> _screens = [
    const HomeContent(),
    const SearchPage(),
    const DownloadsPage(), // Update this line
    const AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // This displays the screen corresponding to the current index
      body: _screens[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More'),
        ],
      ),
    );
  }
}

// --- YOUR ORIGINAL HOME UI MOVED HERE ---
class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 15, 15),
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
      drawer: Drawer(child: ListView()),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          // Added to prevent overflow if list is long
          child: Column(
            children: [
              // POPULAR SECTION
              _buildSectionHeader(
                context,
                "Popular on Netflix",
                const Seeallpage(),
              ),
              _buildMovieRow([
                'assets/images/money heist.jpg',
                'assets/images/stranger things.jpg',
                'assets/images/squid game.jpg',
                'assets/images/dark.jpg',
                'assets/images/breaking bad.jpg',
              ]),
              const SizedBox(height: 30),
              // TRENDING SECTION
              _buildSectionHeader(
                context,
                "Trending Now",
                const TrendingSeeallpage(),
              ),
              _buildMovieRow([
                'assets/images/behind.jpg',
                'assets/images/missing.jpg',
                'assets/images/broadchurch.jpg',
                'assets/images/the asset.jpg',
                'assets/images/the believers.jpg',
                'assets/images/zero day.jpg',
              ]),
            ],
          ),
        ),
      ),
    );
  }

  // Helper to build the Title + See All button
  Widget _buildSectionHeader(
    BuildContext context,
    String title,
    Widget destination,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => destination),
            );
          },
          child: const Text("see all", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }

  // Helper to build the horizontal scrollable row
  Widget _buildMovieRow(List<String> images) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            images
                .map(
                  (path) => Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Image.asset(
                      path,
                      width: 100,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
