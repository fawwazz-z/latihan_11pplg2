import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          // 🔹 HEADER ABU-ABU
          Container(
            width: double.infinity,
            height: 220,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.grey.shade600, Colors.grey.shade800],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    'https://i.pinimg.com/1200x/86/0b/7f/860b7fd8981a66174a0f65af4fbd54af.jpg',
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Fawwaz Labib',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'FawwazLabib29@gmail.com',
                  style: TextStyle(color: Colors.grey[300]),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // 🔹 INFORMASI LAIN
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                _buildInfoTile(Icons.person, "Username", "Wazzz"),
                _buildInfoTile(Icons.phone, "Telepon", "+62 22 1234 5678"),
                _buildInfoTile(Icons.location_on, "Alamat", "Bandung, Jawa Barat, Indonesia"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 REUSABLE WIDGET INFO TILE
  Widget _buildInfoTile(IconData icon, String title, String subtitle) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.grey[100],
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey[300],
          child: Icon(icon, color: Colors.grey[800]),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
      ),
    );
  }
}
