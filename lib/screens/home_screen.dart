import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import 'sign_in_screen.dart'; // Import the SignInScreen class

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Profile Image
            CircleAvatar(
              radius: 60,  // Adjust the size of the profile image
              backgroundImage: AssetImage('assets/images/profile_image.png'),
            ),
            const SizedBox(height: 20),
            const Text(
              'RECOVERLY',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(), // Navigate to SignInScreen
                  ),
                );
              },
              child: const Text(
                'Get Started!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 254, 11, 11),
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF9F7F1), // Set the background color to #F9F7F1
    );
  }
}
