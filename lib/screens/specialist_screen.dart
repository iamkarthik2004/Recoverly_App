// specialist_screen.dart

import 'package:flutter/material.dart';

class SpecialistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Specialist'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Time Text
            Text(
              "9:41 AM",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),

            // Find a Specialist Section
            Text(
              "Find a Specialist",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),

            // Vector Icon
            Image.asset(
              "assets/Vector - 0.png",
              width: 20.25,
              height: 20.25,
            ),
            const SizedBox(height: 10),

            // Button Containers
            Row(
              children: [
                _buildSpecialistButton("Psychiatrist"),
                const SizedBox(width: 10),
                _buildSpecialistButton("Counselors"),
              ],
            ),
            const SizedBox(height: 10),
            _buildSpecialistButton("Doctors"),

            const SizedBox(height: 20),

            // Search Section
            _buildSearchContainer(),
            const SizedBox(height: 10),
            Text(
              "Addiction Counselor, PhD",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Addiction Psychiatrist, MD",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),

            // Specialist Images and Names
            _buildSpecialistCard("assets/image 2.png", "Dr. Suresh"),
            _buildSpecialistCard("assets/image 4.png", "Dr. Anagha Raj"),
            _buildSpecialistCard("assets/image 5.png", "Dr. Shibu John"),
            _buildSpecialistCard("assets/image 6.png", "Dr. Aditi Sharma"),

            // Make Appointment Buttons
            const SizedBox(height: 20),
            _buildMakeAppointmentButton(),
            _buildMakeAppointmentButton(),
            _buildMakeAppointmentButton(),
            _buildMakeAppointmentButton(),
            _buildMakeAppointmentButton(),
          ],
        ),
      ),
    );
  }

  // Helper method to build specialist button
  Widget _buildSpecialistButton(String title) {
    return Container(
      width: 126,
      height: 37,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: Color(0xfff0f2f5),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  // Helper method to build search container
  Widget _buildSearchContainer() {
    return Container(
      width: 388,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xfff0f2f5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/Vector - 0.png",
            width: 18,
            height: 18,
          ),
          Text(
            "Search",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build specialist card with image and name
  Widget _buildSpecialistCard(String imagePath, String name) {
    return Stack(
      children: [
        Image.asset(
          imagePath,
          width: 53,
          height: 55,
        ),
        Positioned(
          top: 60,
          child: Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  // Helper method to build the "Make appointment" button
  Widget _buildMakeAppointmentButton() {
    return Stack(
      children: [
        Container(
          width: 127.95,
          height: 31.34,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xfff0f2f5),
          ),
          child: Center(
            child: Text(
              "Make appointment",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
