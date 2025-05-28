import 'package:flutter/material.dart';

class TourDetailScreen extends StatelessWidget {
  const TourDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Iconic Brazil")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              "8-Days Brazil Adventure",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text("Day 1 - Arrival to Rio de Janeiro"),
            const Text("Transfer to your hotel and rest."),
            const SizedBox(height: 12),
            const Text("Day 2 - Rio de Janeiro Highlights"),
            // Add more days here...
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: const Text("Book a Tour")),
          ],
        ),
      ),
    );
  }
}
