import 'package:flutter/material.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          child: Column(
            children: [
              // Profile avatar with border
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.deepPurple, width: 3),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.withOpacity(0.15),
                      blurRadius: 16,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1502767089025-6572583495b0",
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Sir Benz",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                "Travel Enthusiast",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.withOpacity(0.07),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    buildSettingOption(Icons.edit, "Edit Profile", () {}),
                    buildDivider(),
                    buildSettingOption(Icons.lock, "Change Password", () {}),
                    buildDivider(),
                    buildSettingOption(
                      Icons.notifications,
                      "Notifications",
                      () {},
                    ),
                    buildDivider(),
                    buildSettingOption(Icons.logout, "Logout", () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[100],
    );
  }

  Widget buildSettingOption(IconData icon, String title, VoidCallback onTap) {
    Color iconColor =
        icon == Icons.logout ? Colors.redAccent : Colors.deepPurple;
    return ListTile(
      leading: Icon(icon, color: iconColor),
      title: Text(
        title,
        style: TextStyle(
          color: icon == Icons.logout ? Colors.redAccent : Colors.black87,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: Colors.grey,
      ),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      hoverColor: Colors.deepPurple.withOpacity(0.06),
    );
  }

  Widget buildDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Divider(height: 1, thickness: 0.7),
    );
  }
}
