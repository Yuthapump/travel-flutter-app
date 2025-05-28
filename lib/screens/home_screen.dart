import 'package:flutter/material.dart';
import 'package:flutter_app/config/trip_config.dart';
import 'destination_detail_screen.dart';
import '../widgets/filterchiprow.dart';
// import '../config/trip_config.dart';
// import '../widgets/trip_card.dart';
// import '../widgets/section_title.dart';
// import 'package:flutter/foundation.dart';
// import 'package:device_preview/device_preview.dart';
// import '../widgets/bottom_nav_bar.dart';

class TripCard extends StatelessWidget {
  final String title;
  final String location;
  final String imageUrl;
  final double rating;
  final int reviews;

  const TripCard({
    super.key,
    required this.title,
    required this.location,
    required this.imageUrl,
    required this.rating,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[100],
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // รูป
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.network(
              imageUrl,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          // เนื้อหา
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  location,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.star, size: 14, color: Colors.amber),
                    const SizedBox(width: 2),
                    Text("$rating", style: const TextStyle(fontSize: 12)),
                    Text(
                      " ($reviews)",
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Main with Device Preview
// void main() => runApp(
//   DevicePreview(
//     enabled: !kReleaseMode,
//     builder: (context) => HomeScreen(), // Wrap your app
//   ),
// );

// Main without Device Preview
void main() {
  runApp(
    const MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Background color = เทา
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Hello, Butree 👋",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/woman.png"),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              const Text(
                "Welcome to TripGuide",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 16),
              // Search Bar with filter icon
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.black54),
                        prefixIcon: Icon(Icons.search, color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    margin: const EdgeInsets.only(left: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.filter_alt, color: Colors.black),
                      onPressed: () {
                        // filter action
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Select your next trip",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              // Filter Chips
              const FilterChipsRow(),
              const SizedBox(height: 14),
              // Trip Cards
              Expanded(
                child: ListView(
                  children:
                      getTripList()
                          .map(
                            (trip) => buildTripCard(
                              context,
                              title: trip.title,
                              location: trip.location,
                              imageUrl: trip.imageUrl,
                            ),
                          )
                          .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTripCard(
    BuildContext context, {
    required String title,
    required String location,
    required String imageUrl,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const DestinationDetailScreen()),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3),
              BlendMode.darken,
            ),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 16,
              bottom: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(location, style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),
            Positioned(
              right: 16,
              top: 16,
              child: Icon(Icons.star, color: Colors.yellow[700]),
            ),
          ],
        ),
      ),
    );
  }
}
