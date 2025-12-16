import 'package:flutter/material.dart';
class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text("Profiles & More", 
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          // Profile Section
          Center(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blueAccent, // Placeholder for Profile Image
                    child: const Icon(Icons.person, size: 80, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 10),
                const Text("User Name", 
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(height: 30),
          // Settings List
          const AccountTile(icon: Icons.check, title: "My List"),
          const AccountTile(icon: Icons.settings, title: "App Settings"),
          const AccountTile(icon: Icons.person_outline, title: "Account"),
          const AccountTile(icon: Icons.help_outline, title: "Help"),
          const Spacer(),
          // Sign Out Button
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Sign Out", 
              style: TextStyle(color: Colors.grey, fontSize: 16)),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

// Custom widget for the menu items to keep code clean
class AccountTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const AccountTile({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: const TextStyle(color: Colors.white, fontSize: 16)),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
      onTap: () {}, // Add logic for each setting here
    );
  }
}