import 'package:flutter/material.dart';
import 'package:flutter_app/assignment.dart';
import 'package:flutter_app/assignmentupload.dart';
import 'package:flutter_app/course.dart';
import 'package:flutter_app/logbook.dart';
import 'package:flutter_app/notifications.dart';
import 'package:flutter_app/profile.dart';
import 'package:flutter_app/result.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<IconBar> featureList = [
    IconBar(featureName: "Assignment", featureIcon: Icon(Icons.assignment)),
    IconBar(featureName: "Log book", featureIcon: Icon(Icons.menu_book)),
    IconBar(featureName: "Course", featureIcon: Icon(Icons.article)),
    IconBar(featureName: "Result", featureIcon: Icon(Icons.insert_drive_file)),
    IconBar(
      featureName: "Notifications",
      featureIcon: Icon(Icons.notifications),
    ),
    IconBar(featureName: "Profile", featureIcon: Icon(Icons.person)),
  ];

  final List<Post> postList = [
    Post(
      time: "1h ago",
      poster: "NIST College",
      posterProfile:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPfiQABkbwtXv8ssz6YZImfiPyBvP1DgdUbA&s",
      postedImage:
          "https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-6/524723366_691037413939734_4705631858944217257_n.jpg?stp=dst-jpg_s1080x2048_tt6&_nc_cat=110&ccb=1-7&_nc_sid=833d8c&_nc_ohc=UdfYeGQp6-AQ7kNvwGJ9uax&_nc_oc=Adk9H8d2Nify98DgMjFZBa8nJhPegP5rnFm9WLcTbgo_9881hoPbG-YL0AZUdBb2Mg68TcF39v3JQ0yWUPcz6KYk&_nc_zt=23&_nc_ht=scontent.fktm7-1.fna&_nc_gid=7v94ICgRtncI4sRNX9rWvA&oh=00_AfQq4ESIkQYBZhFcwg9Sr_D6MoueEQjDrRlbmYhCtSAQOw&oe=6890FEE9",
      caption:
          "श्रावण १५, खीर खाने दिनको शुभकामना! शुभ चाडपर्वको अवसरमा तपाईं र तपाईंको परिवारमा सुख, शान्ति र समृद्धिको कामना!",
      commenter: "Prof. Sharma",
    ),
    Post(
      time: "1d ago",
      poster: "NIST Innovation Club",
      posterProfile:
          "https://cdn.fbsbx.com/v/t59.2708-21/497903553_698607859235134_7038698059417308408_n.gif?_nc_cat=101&ccb=1-7&_nc_sid=cf94fc&_nc_ohc=Wmj4UjQfoRUQ7kNvwHl0a8f&_nc_oc=Adn12pqjvBHo-0YyDH87adcIUea9ANYmROGTfRlnV8UAMNwJzH2ri2fjX8kAJBSrmTYWWANTuSizzn-5Z6utNXLX&_nc_zt=7&_nc_ht=cdn.fbsbx.com&_nc_gid=ARNJtYBX_ALsgEMN__dNpA&oh=03_Q7cD2wFN66pL0spPDIJgCjl11tlGG-2PcPrItC2LNC6iTAHqCw&oe=688D6272",
      postedImage:
          "https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-6/509579924_660802270296582_5037609085064599393_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=127cfc&_nc_ohc=9aOQs5DpHTEQ7kNvwF5V5w8&_nc_oc=Adk8u_nFYZJfYoikXuGFWsksoLE3OkIEzAXDDaVDDZBnMEoE3utcXCJ_kb3k6d9tuzZbihYm1s3mvv036sRISkKt&_nc_zt=23&_nc_ht=scontent.fktm7-1.fna&_nc_gid=sXD4_y5SlJvepkmzpZNzZg&oh=00_AfQzhPS85lxKFe_O5HFdOvquwh7lTOcBTc8Gv1z9to9lkA&oe=689158CB",
      caption:
          "Wrapped up the NIST Hackathon 2082 with innovation, teamwork, and sleepless nights! Grateful for the experience, the challenges, and the growth. On to the next adventure! 💻🚀",
      commenter: "Sujan Pandey",
    ),
    Post(
      time: "3h ago",
      poster: "Bijay Shrestha",
      posterProfile:
          "https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-6/525696560_2414551105596598_6779755232399871328_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=Z1gxaIYZHhUQ7kNvwEXrmRV&_nc_oc=AdnVcTufG4kXMBKWZA5azsEOXwNCvdY3mYMNGBnPb9F1CKSQ1U4rCLZBskqEa29BwRMImIkF6N5ytKKNN2XeA-2f&_nc_zt=23&_nc_ht=scontent.fktm7-1.fna&_nc_gid=CNFUm-nYMpxoF2ds3tp8Zw&oh=00_AfTSFjdRD24vnPsyLG3BlO7EeQKK88xpd5zRSrmpbg2ouQ&oe=68911B30",
      postedImage:
          "https://scontent.fktm10-1.fna.fbcdn.net/v/t39.30808-6/514412495_669599792750163_3720856472145583928_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=127cfc&_nc_ohc=xoLm2bztfA4Q7kNvwH27nRH&_nc_oc=AdleqlvIzf1bLZZIqRAmqgwSA4XwzbLc6poEEmi6BMO9zSVUltm_DxHXHcNi4os0MXhe90wtcd3TBQiLPiu-IMUj&_nc_zt=23&_nc_ht=scontent.fktm10-1.fna&_nc_gid=CaJsY_-eod4IVau8VKaCLA&oh=00_AfTHgt0LMBDcyWwRj_PSeIdNN7Kx6W2jWwXlVtwglTgoRw&oe=68911158",
      caption: "CMAT  Entrance preparation class are running join now!",
      commenter: "Student Council",
    ),

    Post(
      time: "2d ago",
      poster: "NIST College ",
      posterProfile:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPfiQABkbwtXv8ssz6YZImfiPyBvP1DgdUbA&s",

      postedImage:
          "https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-6/518957664_677332171976925_6099972817560165773_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=127cfc&_nc_ohc=hCsZk6oGkoYQ7kNvwHE4KpC&_nc_oc=AdlaE87qrq28YnULLtANTT2Cs-dQcmLMr2qZqYeYfcolSxisPNMWJiOb3j9pq5emBZy3WW9hgSWGhnGBgsYElG88&_nc_zt=23&_nc_ht=scontent.fktm7-1.fna&_nc_gid=WrFZzSi7O-dMtYZ_o_KVUw&oh=00_AfQ4-sB6DcaKUhEXL9onuMcisug8Z5MD1DEi8kUjxXt94w&oe=689137A1",
      caption: "Happy Bhanu Jayanti!!!",
      commenter: "Placement Cell",
    ),
    Post(
      time: "5d ago",
      poster: "NIST College",
      posterProfile:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPfiQABkbwtXv8ssz6YZImfiPyBvP1DgdUbA&s",
      postedImage:
          "https://scontent.fktm10-1.fna.fbcdn.net/v/t39.30808-6/521673936_684826871227455_6257109921799698454_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=833d8c&_nc_ohc=S_cgWxXOXcMQ7kNvwHqcHxI&_nc_oc=AdmB--5HZrlBqhoOtk_rur7lJR_-iM0PB5r175jB6m7RS3U2_yg4Z4I0sz6HBhqoDaK_iewaamELKK_-fuK39I_2&_nc_zt=23&_nc_ht=scontent.fktm10-1.fna&_nc_gid=eJHgbcKYdh6vVb1Lj97w5w&oh=00_AfS4X1MF9GPeMgq2pvA2VvDg6eNdTg2YI81k5q8t8h1CGA&oe=68913238",
      caption: "घण्टाकर्ण पर्वको शुभकामना! ",
      commenter: "Academic Office",
    ),
  ];

  void _handleFeatureTap(String featureName) {
    if (featureName == "Notifications") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Notifications()),
      );
    } else if (featureName == "Assignment") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Assignmentupload()),
      );
    } else if (featureName == "Log book") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Logbook()),
      );
    } else if (featureName == "Course") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Course()),
      );
    } else if (featureName == "Result") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Result()),
      );
    } else if (featureName == "Profile") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Profile()),
      );
    }
    // Add other feature navigation if needed
  }

  bool loveReact = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("NIST"),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: 24,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 16),
        children: [
          // Feature Bar
          SizedBox(
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: featureList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () =>
                      _handleFeatureTap(featureList[index].featureName!),
                  child: Container(
                    width: 80,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          featureList[index].featureIcon!,
                          SizedBox(height: 8),
                          Text(
                            featureList[index].featureName!,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // Post Feed
          ...postList.map((post) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Poster Info
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundImage: NetworkImage(post.posterProfile!),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post.poster!,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            post.time!,
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  // Caption
                  Text(post.caption!, style: TextStyle(fontSize: 14)),
                  SizedBox(height: 10),

                  // Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      post.postedImage ??
                          'https://via.placeholder.com/400x200.png?text=No+Image',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 200,
                    ),
                  ),

                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              post.isFavorite = !post
                                  .isFavorite; // Toggle favorite state for this post
                            });
                          },

                          icon: Column(
                            children: [
                              Text(post.isFavorite ? "1 Like" : ""),
                              Icon(
                                post.isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                size: 25,
                                color: post.isFavorite
                                    ? Colors.red
                                    : Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}

class IconBar {
  String? featureName;
  Widget? featureIcon;
  IconBar({this.featureName, this.featureIcon});
}

class Post {
  String? time, poster, posterProfile, postedImage, caption, commenter;
  bool isFavorite = false;
  Post({
    this.time,
    this.poster,
    this.posterProfile,
    this.postedImage,
    this.caption,
    this.commenter,
    this.isFavorite = false,
  });
}
