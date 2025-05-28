import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explore"),
        centerTitle: true,
        // backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              const Icon(Icons.explore, color: Colors.teal, size: 28),
              const SizedBox(width: 8),
              const Text(
                "Trending Destinations",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 18),
          buildExploreCard(
            "Chiang Rai",
            "Discover nature and temples",
            "https://images.unsplash.com/photo-1671188893377-ee825a53d27f?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hpYW5nJTIwcmFpfGVufDB8fDB8fHww",
          ),
          buildExploreCard(
            "Hua Hin",
            "Relax on the beach",
            "https://media.istockphoto.com/id/534199676/photo/hua-hin-cityscape.jpg?s=612x612&w=0&k=20&c=zccVtRet9f2rOHlUsOK7gfm5kqrs7ZqgB0XeIouGz_I=",
          ),
        ],
      ),
    );
  }

  Widget buildExploreCard(String title, String subtitle, String imageUrl) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.teal.withOpacity(0.10),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: Stack(
          children: [
            SizedBox(
              height: 220,
              width: double.infinity,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                loadingBuilder:
                    (context, child, progress) =>
                        progress == null
                            ? child
                            : Container(
                              color: Colors.grey[200],
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            ),
              ),
            ),
            // Gradient overlay
            Container(
              height: 220,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent,
                    Colors.black.withOpacity(0.25),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [0, 0.5, 1],
                ),
              ),
            ),
            // Favorite icon
            Positioned(
              top: 16,
              right: 16,
              child: Material(
                color: Colors.white.withOpacity(0.92),
                shape: const CircleBorder(),
                elevation: 2,
                child: IconButton(
                  icon: const Icon(Icons.favorite_border, color: Colors.teal),
                  onPressed: () {},
                  splashRadius: 22,
                ),
              ),
            ),
            // Title & subtitle
            Positioned(
              left: 20,
              bottom: 28,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      shadows: [Shadow(blurRadius: 6, color: Colors.black)],
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      shadows: [Shadow(blurRadius: 3, color: Colors.black)],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
