import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  final List<String> topSearches = const [
    'Squid Game',
    'Breaking Bad',
    'Dark',
    'Money Heist',
    'Stranger Things',
    'The Asset',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Ensure this line is exactly like this:
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        // This removes the back button if you don't want it on a tab page
        automaticallyImplyLeading: false,
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(5),
          ),
          child: const TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              hintText: 'Search for a show, movie, etc.',
              hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 5),
              suffixIcon: Icon(Icons.mic, color: Colors.grey),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Top Searches",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: topSearches.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  // New non-deprecated color method
                  color: Colors.grey[900]?.withValues(alpha: 0.3),
                  child: ListTile(
                    leading: Container(
                      width: 100,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/Netflix logo.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    title: Text(
                      topSearches[index],
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    trailing: const Icon(
                      Icons.play_circle_outline,
                      color: Colors.white,
                    ),
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
