import 'package:flutter/material.dart';
import 'tour_detail_screen.dart';
import '../widgets/trip_card.dart';
import '../widgets/section_title.dart';

class DestinationDetailScreen extends StatelessWidget {
  const DestinationDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Background image
          SizedBox(
            height: 400,
            width: double.infinity,
            child: Image.network(
              "https://i0.wp.com/www.iurban.in.th/wp-content/uploads/2017/09/icover2017-romantic-cm5-1.jpg",
              fit: BoxFit.cover,
            ),
          ),

          // Back + Favorite buttons
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _iconButton(
                    context,
                    Icons.arrow_back,
                    () => Navigator.pop(context),
                  ),
                  _iconButton(context, Icons.favorite_border, () {
                    // TODO: Favorite action
                  }),
                ],
              ),
            ),
          ),

          // Draggable sheet-like content
          DraggableScrollableSheet(
            initialChildSize: 0.65,
            minChildSize: 0.5,
            maxChildSize: 0.95,
            builder: (context, scrollController) {
              return Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: ListView(
                  children: [
                    Center(
                      child: Container(
                        width: 40,
                        height: 4,
                        margin: const EdgeInsets.only(bottom: 16),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.green,
                          size: 20,
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          "เชียงใหม่",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        const Icon(Icons.star, color: Colors.amber, size: 20),
                        const SizedBox(width: 4),
                        const Text("5.0 · "),
                        const Text(
                          "143 reviews",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "เชียงใหม่",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Chiang Mai is a city in mountainous northern Thailand, famous for its beautiful old city, vibrant night markets, ancient temples, and surrounding natural beauty. It’s a hub for culture, adventure, and relaxation, attracting travelers from around the world.",
                      style: TextStyle(height: 1.4),
                    ),
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: () {
                        // Optional read more logic
                      },
                      child: const Text(
                        "Read more...",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    const SizedBox(height: 24),
                    SectionTitle(title: "Upcoming tours", onViewAll: () {}),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 220,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          GestureDetector(
                            onTap:
                                () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const TourDetailScreen(),
                                  ),
                                ),
                            child: const TripCard(
                              title: " ภูเก็ต",
                              location: "8 days · from \$659/person",
                              imageUrl:
                                  "https://images.pexels.com/photos/18198497/pexels-photo-18198497.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                              rating: 4.6,
                              reviews: 56,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const TripCard(
                            title: "กระบี่",
                            location: "3 days · from \$489/person",
                            imageUrl:
                                "https://cdn.pixabay.com/photo/2014/10/15/09/49/spoke-the-beach-489422_640.jpg",
                            rating: 4.8,
                            reviews: 76,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _iconButton(BuildContext context, IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Icon(icon, color: Colors.black),
      ),
    );
  }
}
