import 'package:flutter/material.dart';
import 'user_profile_screen.dart'; // Import the UserProfileScreen

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the SignIn page
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              "Create your account",
              style: TextStyle(
                fontSize: 26.7,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),

            // Name field
            _buildTextField("Name"),
            SizedBox(height: 10),

            // Email field
            _buildTextField("Email"),
            SizedBox(height: 10),

            // Password field
            _buildTextField("Password"),
            SizedBox(height: 10),

            // Confirm password field
            _buildTextField("Confirm password"),
            SizedBox(height: 10),

            // Terms and policy
            Text(
              "I understood the terms & policy.",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 20),

            // Sign Up button
            ElevatedButton(
              onPressed: () {
                // Navigate to the UserProfileScreen after sign-up
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => UserProfileScreen()),
                );
              },
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Or sign up with text
            Text(
              "or sign up with",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 20),

            // Sign Up with other options (icons, etc.)
            _buildSocialSignUpOptions(),

            // Time display (optional)
            SizedBox(height: 20),
            Text(
              "9:41 AM",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to create a text field
  Widget _buildTextField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter your $label',
          ),
        ),
      ],
    );
  }

  // Social sign-up options (for example, with icons)
  Widget _buildSocialSignUpOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildSocialIcon(Icon(Icons.facebook, color: Colors.blue)),
        _buildSocialIcon(Icon(Icons.email, color: Colors.red)),
        _buildSocialIcon(Icon(Icons.phone, color: Colors.green)),
      ],
    );
  }

  // Helper function to create a social media icon
  Widget _buildSocialIcon(Widget icon) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
      ),
      child: IconButton(
        icon: icon,
        onPressed: () {},
      ),
    );
  }
}
