import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          // 🔹 HEADER DENGAN BACKGROUND ABU
          Container(
            width: double.infinity,
            height: 200,
            color: const Color.fromARGB(255, 95, 62, 62),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 55,
                  backgroundImage: NetworkImage(
                    'https://i.pinimg.com/1200x/86/0b/7f/860b7fd8981a66174a0f65af4fbd54af.jpg',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Fawwaz Labib",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "FawwazLabib29@gmail.com",
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          // 🔹 INFO DALAM BENTUK KOTAK HORIZONTAL
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: _buildInfoBox(Icons.person, "Username", "Wazzz"),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: _buildInfoBox(Icons.phone, "Telepon", "+62 22 1234 5678"),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                _buildInfoBox(Icons.location_on, "Alamat", "Bandung, Jawa Barat, Indonesia"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 Widget Info Box (Kotak Horizontal)
  Widget _buildInfoBox(IconData icon, String title, String subtitle) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.grey[800], size: 28),
          const SizedBox(height: 10),
          Text(title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 14)),
          const SizedBox(height: 4),
          Text(subtitle, style: TextStyle(color: Colors.grey[700])),
        ],
      ),
    );
  }
}
