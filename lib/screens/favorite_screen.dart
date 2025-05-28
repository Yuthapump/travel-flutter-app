import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
        centerTitle: true,
        // backgroundColor: Colors.redAccent,
      ),

      body: Container(
        margin: const EdgeInsets.only(bottom: 50),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 90),
          children: const [
            FavoriteItemCard(
              title: "Kwan Phayao Lake",
              location: "Phayao, Thailand",
              imageUrl:
                  "https://img.freepik.com/premium-photo/beautiful-with-blue-sky-pagoda-king-nagaes-statue-holy-lake-phayao-phayao-thailan_52075-550.jpg",
            ),
            FavoriteItemCard(
              title: "Phuket Beach",
              location: "Thailand",
              imageUrl:
                  "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
            ),
            FavoriteItemCard(
              title: "Wat Pho",
              location: "Bangkok, Thailand",
              imageUrl:
                  "https://media.istockphoto.com/id/451984799/photo/ancient-temples-wat-pho-temple-in-bangkok-thailand.jpg?s=612x612&w=0&k=20&c=JJyZ74vKDNi1fmrbwOnpeM7DwLI8s8ZDIiQm2CHeGD8=",
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteItemCard extends StatelessWidget {
  final String title;
  final String location;
  final String imageUrl;

  const FavoriteItemCard({
    required this.title,
    required this.location,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 18),
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              // Rounded image
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(18),
                ),
                child: Image.network(
                  imageUrl,
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              // Favorite icon
              Positioned(
                top: 12,
                right: 12,
                child: CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.85),
                  child: Icon(Icons.favorite, color: Colors.redAccent),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 16, color: Colors.teal),
                    const SizedBox(width: 4),
                    Text(
                      location,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
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
