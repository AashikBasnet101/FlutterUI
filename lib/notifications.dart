import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  Notifications({super.key});

  final List<Notification> notificationList = [
    Notification(
      time: "2m",
      notificationProfile:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPfiQABkbwtXv8ssz6YZImfiPyBvP1DgdUbA&s",
      notificationPerson: "NIST College",
      notificationContent: "Wished everyone on Khir Khane Din!",
    ),

    Notification(
      time: "20m",
      notificationProfile:
          "https://cdn.fbsbx.com/v/t59.2708-21/497903553_698607859235134_7038698059417308408_n.gif?_nc_cat=101&ccb=1-7&_nc_sid=cf94fc&_nc_ohc=Wmj4UjQfoRUQ7kNvwHl0a8f&_nc_oc=Adn12pqjvBHo-0YyDH87adcIUea9ANYmROGTfRlnV8UAMNwJzH2ri2fjX8kAJBSrmTYWWANTuSizzn-5Z6utNXLX&_nc_zt=7&_nc_ht=cdn.fbsbx.com&_nc_gid=ARNJtYBX_ALsgEMN__dNpA&oh=03_Q7cD2wFN66pL0spPDIJgCjl11tlGG-2PcPrItC2LNC6iTAHqCw&oe=688D6272",
      notificationPerson: "NIST Innovation Club",
      notificationContent: "Posted NIST Hackathon 2082 highlights.",
    ),
    Notification(
      time: "30m",
      notificationProfile:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPfiQABkbwtXv8ssz6YZImfiPyBvP1DgdUbA&s",
      notificationPerson: "NIST College",
      notificationContent: "Shared Bhanu Jayanti celebration wishes.",
    ),
    Notification(
      time: "40m",
      notificationProfile:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPfiQABkbwtXv8ssz6YZImfiPyBvP1DgdUbA&s",
      notificationPerson: "NIST College",
      notificationContent: "Extended greetings on GhantaKarna Festival.",
    ),

    Notification(
      time: "2h",
      notificationProfile:
          "https://cdn.fbsbx.com/v/t59.2708-21/497903553_698607859235134_7038698059417308408_n.gif?_nc_cat=101&ccb=1-7&_nc_sid=cf94fc&_nc_ohc=Wmj4UjQfoRUQ7kNvwHl0a8f&_nc_oc=Adn12pqjvBHo-0YyDH87adcIUea9ANYmROGTfRlnV8UAMNwJzH2ri2fjX8kAJBSrmTYWWANTuSizzn-5Z6utNXLX&_nc_zt=7&_nc_ht=cdn.fbsbx.com&_nc_gid=ARNJtYBX_ALsgEMN__dNpA&oh=03_Q7cD2wFN66pL0spPDIJgCjl11tlGG-2PcPrItC2LNC6iTAHqCw&oe=688D6272",
      notificationPerson: "NIST Innovation Club",
      notificationContent: "Hackathon feedback session scheduled.",
    ),
    Notification(
      time: "3h",
      notificationProfile:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPfiQABkbwtXv8ssz6YZImfiPyBvP1DgdUbA&s",
      notificationPerson: "NIST College",
      notificationContent: "Internal exam routine released.",
    ),

    Notification(
      time: "5h",
      notificationProfile:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPfiQABkbwtXv8ssz6YZImfiPyBvP1DgdUbA&s",
      notificationPerson: "NIST College",
      notificationContent: "Invited students for annual picnic.",
    ),
    Notification(
      time: "6h",
      notificationProfile:
          "https://cdn.fbsbx.com/v/t59.2708-21/497903553_698607859235134_7038698059417308408_n.gif?_nc_cat=101&ccb=1-7&_nc_sid=cf94fc&_nc_ohc=Wmj4UjQfoRUQ7kNvwHl0a8f&_nc_oc=Adn12pqjvBHo-0YyDH87adcIUea9ANYmROGTfRlnV8UAMNwJzH2ri2fjX8kAJBSrmTYWWANTuSizzn-5Z6utNXLX&_nc_zt=7&_nc_ht=cdn.fbsbx.com&_nc_gid=ARNJtYBX_ALsgEMN__dNpA&oh=03_Q7cD2wFN66pL0spPDIJgCjl11tlGG-2PcPrItC2LNC6iTAHqCw&oe=688D6272",
      notificationPerson: "NISTInnovation Club",
      notificationContent: "Announced AI workshop next week.",
    ),
    Notification(
      time: "7h",
      notificationProfile:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPfiQABkbwtXv8ssz6YZImfiPyBvP1DgdUbA&s",
      notificationPerson: "NIST College",
      notificationContent: "Scholarship forms available now.",
    ),

    Notification(
      time: "9h",
      notificationProfile:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPfiQABkbwtXv8ssz6YZImfiPyBvP1DgdUbA&s",
      notificationPerson: "NIST College",
      notificationContent: "Updated library timings.",
    ),
    Notification(
      time: "10h",
      notificationProfile:
          "https://cdn.fbsbx.com/v/t59.2708-21/497903553_698607859235134_7038698059417308408_n.gif?_nc_cat=101&ccb=1-7&_nc_sid=cf94fc&_nc_ohc=Wmj4UjQfoRUQ7kNvwHl0a8f&_nc_oc=Adn12pqjvBHo-0YyDH87adcIUea9ANYmROGTfRlnV8UAMNwJzH2ri2fjX8kAJBSrmTYWWANTuSizzn-5Z6utNXLX&_nc_zt=7&_nc_ht=cdn.fbsbx.com&_nc_gid=ARNJtYBX_ALsgEMN__dNpA&oh=03_Q7cD2wFN66pL0spPDIJgCjl11tlGG-2PcPrItC2LNC6iTAHqCw&oe=688D6272",
      notificationPerson: "NIST Innovation Club",
      notificationContent: "Released Hackathon participant list.",
    ),

    Notification(
      time: "12h",
      notificationProfile:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPfiQABkbwtXv8ssz6YZImfiPyBvP1DgdUbA&s",
      notificationPerson: "NIST College",
      notificationContent: "Attendance sheet available online.",
    ),
    Notification(
      time: "13h",
      notificationProfile:
          "https://cdn.fbsbx.com/v/t59.2708-21/497903553_698607859235134_7038698059417308408_n.gif?_nc_cat=101&ccb=1-7&_nc_sid=cf94fc&_nc_ohc=Wmj4UjQfoRUQ7kNvwHl0a8f&_nc_oc=Adn12pqjvBHo-0YyDH87adcIUea9ANYmROGTfRlnV8UAMNwJzH2ri2fjX8kAJBSrmTYWWANTuSizzn-5Z6utNXLX&_nc_zt=7&_nc_ht=cdn.fbsbx.com&_nc_gid=ARNJtYBX_ALsgEMN__dNpA&oh=03_Q7cD2wFN66pL0spPDIJgCjl11tlGG-2PcPrItC2LNC6iTAHqCw&oe=688D6272",
      notificationPerson: "NIST Innovation Club",
      notificationContent: "Design challenge registration closing soon.",
    ),
    Notification(
      time: "14h",
      notificationProfile:
          "https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-6/525696560_2414551105596598_6779755232399871328_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=Z1gxaIYZHhUQ7kNvwEXrmRV&_nc_oc=AdnVcTufG4kXMBKWZA5azsEOXwNCvdY3mYMNGBnPb9F1CKSQ1U4rCLZBskqEa29BwRMImIkF6N5ytKKNN2XeA-2f&_nc_zt=23&_nc_ht=scontent.fktm7-1.fna&_nc_gid=CNFUm-nYMpxoF2ds3tp8Zw&oh=00_AfTSFjdRD24vnPsyLG3BlO7EeQKK88xpd5zRSrmpbg2ouQ&oe=68911B30",
      notificationPerson: "Bijay Shrestha",
      notificationContent: "Live Q&A at 4:00 PM today.",
    ),
    Notification(
      time: "15h",
      notificationProfile:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPfiQABkbwtXv8ssz6YZImfiPyBvP1DgdUbA&s",
      notificationPerson: "NIST College",
      notificationContent: "Don't forget to fill feedback form.",
    ),
    Notification(
      time: "4h",
      notificationProfile:
          "https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-6/525696560_2414551105596598_6779755232399871328_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=Z1gxaIYZHhUQ7kNvwEXrmRV&_nc_oc=AdnVcTufG4kXMBKWZA5azsEOXwNCvdY3mYMNGBnPb9F1CKSQ1U4rCLZBskqEa29BwRMImIkF6N5ytKKNN2XeA-2f&_nc_zt=23&_nc_ht=scontent.fktm7-1.fna&_nc_gid=CNFUm-nYMpxoF2ds3tp8Zw&oh=00_AfTSFjdRD24vnPsyLG3BlO7EeQKK88xpd5zRSrmpbg2ouQ&oe=68911B30",
      notificationPerson: "Bijay Shrestha",
      notificationContent: "Posted notes on JAVA Programming.",
    ),
    Notification(
      time: "8h",
      notificationProfile:
          "https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-6/525696560_2414551105596598_6779755232399871328_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=Z1gxaIYZHhUQ7kNvwEXrmRV&_nc_oc=AdnVcTufG4kXMBKWZA5azsEOXwNCvdY3mYMNGBnPb9F1CKSQ1U4rCLZBskqEa29BwRMImIkF6N5ytKKNN2XeA-2f&_nc_zt=23&_nc_ht=scontent.fktm7-1.fna&_nc_gid=CNFUm-nYMpxoF2ds3tp8Zw&oh=00_AfTSFjdRD24vnPsyLG3BlO7EeQKK88xpd5zRSrmpbg2ouQ&oe=68911B30",
      notificationPerson: "Bijay Shrestha",
      notificationContent: "Shared tips for CMAT interview.",
    ),
    Notification(
      time: "11h",
      notificationProfile:
          "https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-6/525696560_2414551105596598_6779755232399871328_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=Z1gxaIYZHhUQ7kNvwEXrmRV&_nc_oc=AdnVcTufG4kXMBKWZA5azsEOXwNCvdY3mYMNGBnPb9F1CKSQ1U4rCLZBskqEa29BwRMImIkF6N5ytKKNN2XeA-2f&_nc_zt=23&_nc_ht=scontent.fktm7-1.fna&_nc_gid=CNFUm-nYMpxoF2ds3tp8Zw&oh=00_AfTSFjdRD24vnPsyLG3BlO7EeQKK88xpd5zRSrmpbg2ouQ&oe=68911B30",
      notificationPerson: "Bijay Shrestha",
      notificationContent: "Uploaded lecture recordings.",
    ),
    Notification(
      time: "1h",
      notificationProfile:
          "https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-6/525696560_2414551105596598_6779755232399871328_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=Z1gxaIYZHhUQ7kNvwEXrmRV&_nc_oc=AdnVcTufG4kXMBKWZA5azsEOXwNCvdY3mYMNGBnPb9F1CKSQ1U4rCLZBskqEa29BwRMImIkF6N5ytKKNN2XeA-2f&_nc_zt=23&_nc_ht=scontent.fktm7-1.fna&_nc_gid=CNFUm-nYMpxoF2ds3tp8Zw&oh=00_AfTSFjdRD24vnPsyLG3BlO7EeQKK88xpd5zRSrmpbg2ouQ&oe=68911B30",
      notificationPerson: "Bijay Shrestha",
      notificationContent: "Shared a memory from last CMAT batch.",
    ),
    Notification(
      time: "10m",
      notificationProfile:
          "https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-6/525696560_2414551105596598_6779755232399871328_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=Z1gxaIYZHhUQ7kNvwEXrmRV&_nc_oc=AdnVcTufG4kXMBKWZA5azsEOXwNCvdY3mYMNGBnPb9F1CKSQ1U4rCLZBskqEa29BwRMImIkF6N5ytKKNN2XeA-2f&_nc_zt=23&_nc_ht=scontent.fktm7-1.fna&_nc_gid=CNFUm-nYMpxoF2ds3tp8Zw&oh=00_AfTSFjdRD24vnPsyLG3BlO7EeQKK88xpd5zRSrmpbg2ouQ&oe=68911B30",
      notificationPerson: "Bijay Shrestha",
      notificationContent: "Announced CMAT entrance preparation class.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            const Text("Notifications"),
            SizedBox(width: 10),
            CircleAvatar(
              radius: 10,
              backgroundColor: Color(0xFF2163b1),
              child: Text(
                "20",
                style: TextStyle(
                  color: Color.fromARGB(255, 247, 248, 249),
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: 24,
        ),
      ),

      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          scrollDirection: Axis.vertical, // optional
          itemCount: notificationList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 80,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                notificationList[index].notificationProfile!,
                              ),
                            ),
                            SizedBox(width: 8),

                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      notificationList[index]
                                          .notificationPerson!,

                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),

                                    Text(
                                      notificationList[index]
                                          .notificationContent!,

                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 6.0),
                              child: Text(
                                notificationList[index].time!,

                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class Notification {
  String? time, notificationProfile, notificationPerson, notificationContent;
  Notification({
    this.time,
    this.notificationProfile,
    this.notificationPerson,
    this.notificationContent,
  });
}
