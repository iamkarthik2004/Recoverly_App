// user_profile_screen.dart

import 'package:flutter/material.dart';
import 'specialist_screen.dart'; // Import the Specialist screen

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  // Selected index for navigation
  int _selectedIndex = 0;

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Handle the navigation action here
    switch (index) {
      case 0:
        print("Home tapped");
        break;
      case 1:
        // Navigate to Specialist page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SpecialistScreen()),
        );
        break;
      case 2:
        print("Store tapped");
        break;
      case 3:
        print("Report tapped");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Section
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/user_placeholder.png'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Ron Williams',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Handle Edit Profile Action
              },
              child: const Text('Edit Profile'),
            ),
            const SizedBox(height: 32),

            // Buttons Section
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Two buttons per row
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildFeatureButton(
                    context,
                    title: 'Track your progress',
                    subtitle: 'Medication Management',
                    icon: Icons.track_changes,
                  ),
                  _buildFeatureButton(
                    context,
                    title: 'Stay on track',
                    subtitle: 'Reminders',
                    icon: Icons.notifications,
                  ),
                  _buildFeatureButton(
                    context,
                    title: 'Medicine',
                    subtitle: 'Medical Specialist',
                    icon: Icons.medical_services,
                  ),
                  _buildFeatureButton(
                    context,
                    title: 'Community groups',
                    subtitle: 'Find support',
                    icon: Icons.group,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onNavItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Specialist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: 'Report',
          ),
        ],
        selectedItemColor: Colors.blue, // Color when selected
        unselectedItemColor: Colors.grey, // Color when not selected
      ),
    );
  }

  // Build Feature Button with Icon and Text
  Widget _buildFeatureButton(BuildContext context,
      {required String title,
      required String subtitle,
      required IconData icon}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black, // Set button color to black
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: () {
        // Handle Button Click (add logic here if needed)
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 36, color: Colors.white), // Set icon color to white
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
