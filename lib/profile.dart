import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 24),

          // Profile Image (centered)
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                'https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-6/481920746_1327376295126291_6017191509601020164_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=GTqdkwp6yGIQ7kNvwEGV7qB&_nc_oc=AdnWPPWqrOiPH_tpAk5U0xM-6YEdfq3sjwoEN6cgHHbuA6lamqkO8FEGVWlxw3Ls3EHDjJgrIX9rxbC7fcl7ZJbL&_nc_zt=23&_nc_ht=scontent.fktm7-1.fna&_nc_gid=HVdDMGD9uUMfDBWGzgMzmw&oh=00_AfRNmnwO1xxM8vXpGtzPeQ-vhj04gtP5i2l7A3Oz7nYE6w&oe=689166A6',
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Name, Email, Reg. No.
          Column(
            children: const [
              Text(
                'Aashik Basnet',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'aashik@gmail.com',
                    style: TextStyle(color: Colors.grey),
                  ),
                  VerticalDivider(thickness: 15),
                  Text(
                    'Reg. No.: 42211234',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 24),
          const Divider(thickness: 1),

          // General Section
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Text(
              'General',
              style: TextStyle(color: Colors.red, fontSize: 16),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {},
          ),

          // Help & Support Section
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Text(
              'Help & Support',
              style: TextStyle(color: Colors.red, fontSize: 16),
            ),
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text('Privacy Policy'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Terms & Conditions'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('Contact Us'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
