import 'package:flutter/material.dart';

class Instagram extends StatelessWidget {
  Instagram({super.key});

  final List<Story> storyList = [
    Story(
      userName: "Balen Shah",
      storyImageUrl:
          "https://annapurnaexpress.prixacdn.net/media/albums/Balen_Shah_iuTWcK0zlE.jpg",
    ),

    Story(
      userName: "Salman Khan",
      storyImageUrl:
          "https://media.themoviedb.org/t/p/w500/n7pKtccmf2jVOz8Qn90q2ThqLge.jpg",
    ),

    Story(
      userName: "Sarukh Khan",
      storyImageUrl:
          "https://images.loksattaimg.com/2023/01/shahrukh-han-pathaan.jpg",
    ),

    Story(
      userName: "Anoml KC",
      storyImageUrl:
          "https://republicaimg.nagariknewscdn.com/shared/web/uploads/media/anmolkce_20210330155113.PNG",
    ),

    Story(
      userName: "Routiney",
      storyImageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd3v30sfJPhPg2HSyg55Ur7X0v7Z7yug5fAQ&s",
    ),
    Story(
      userName: "Rajesh Hamal",
      storyImageUrl:
          "https://rajeshhamal.com.np/wp-content/uploads/2018/08/profile.jpg",
    ),

    Story(
      userName: "Dilip Rayamajhi",
      storyImageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Dilip_Rayamajhi4.JPG/500px-Dilip_Rayamajhi4.JPG",
    ),

    Story(
      userName: "Jacqueline",
      storyImageUrl:
          "https://images.fandango.com/ImageRenderer/300/0/redesign/static/img/default_poster.png/0/images/masterrepository/performer%20images/982338/JacquelineFernandez-2022a_r.jpg",
    ),

    Story(
      userName: "NIST College",
      storyImageUrl:
          "https://scontent.fktm10-1.fna.fbcdn.net/v/t39.30808-6/338598909_954171579093086_4804718584894576133_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=ljf-ucAP4y0Q7kNvwFS2fIO&_nc_oc=Adkp0tmQNQ2zqnOV7IgYjFpin-186u7bExQt_ihkNFqLDaA9VUWi1xSfI8-LS_K5tDlJZbNSDravX3rNFBNMNDRk&_nc_zt=23&_nc_ht=scontent.fktm10-1.fna&_nc_gid=zBcunHJ55cWWEGIR_MRrRQ&oh=00_AfRxiIpSIiStWtsQJBMK4YubS44emKL1usj1o0Mb68FSyg&oe=68895A8F",
    ),

    Story(
      userName: "Amir Khan",
      storyImageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYvAgrGoZLw2pNVGO88XhyEp2qbBlGZfZN8S_Siiu3m7hIGMQZFSccUjH9_8Jh4KTLHxsdhe-uKsnQO6gpqvMqIw",
    ),

    Story(
      userName: "Allu Arjun",
      storyImageUrl:
          "https://cdn.bollywoodbubble.com/wp-content/uploads/2024/11/Allu-Arjun-reveals-why-he-initially-NEVER-wanted-to-work-in-Bollywood.jpg",
    ),

    Story(
      storyImageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrdG6XC3dMGNpNfOYOZKO_IQRTlLe0BFOFxZy764jSF6luAiK4LW_TQflBa6CuanSoOQU&usqp=CAU",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "Instagram",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.favorite, color: Colors.red, size: 30),
          SizedBox(width: 20),

          Icon(Icons.message, color: Colors.white, size: 30),
          SizedBox(width: 20),

          Icon(Icons.add_photo_alternate, color: Colors.white, size: 27),
          SizedBox(width: 20),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              SizedBox(
                height: 120,
                child: ListView.builder(
                  itemCount: storyList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(7),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                              storyList[index].storyImageUrl ??
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrdG6XC3dMGNpNfOYOZKO_IQRTlLe0BFOFxZy764jSF6luAiK4LW_TQflBa6CuanSoOQU&usqp=CAU",
                            ),
                          ),
                          const SizedBox(height: 9),
                          Text(
                            storyList[index].userName ?? "Instagram User",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              const Row(
                children: [
                  SizedBox(width: 20),
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(
                      "https://images.loksattaimg.com/2023/01/shahrukh-han-pathaan.jpg",
                    ),
                  ),
                  SizedBox(width: 15),
                  Text("Sarukh Khan", style: TextStyle(color: Colors.white)),
                  Spacer(),

                  Icon(Icons.more_vert, color: Colors.white),
                ],
              ),
              SizedBox(height: 10),

              Image.network(
                "https://images.loksattaimg.com/2023/01/shahrukh-han-pathaan.jpg",
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 20),
                  Icon(Icons.favorite, color: Colors.red, size: 30),
                  SizedBox(width: 20),
                  Icon(Icons.comment, color: Colors.white, size: 30),
                  SizedBox(width: 20),
                  Icon(Icons.share, color: Colors.white, size: 27),
                  SizedBox(width: 20),
                  Spacer(),
                  Icon(Icons.bookmark, color: Colors.white, size: 27),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),

              const Row(
                children: [
                  SizedBox(width: 20),
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(
                      "https://republicaimg.nagariknewscdn.com/shared/web/uploads/media/anmolkce_20210330155113.PNG",
                    ),
                  ),
                  SizedBox(width: 15),
                  Text("Anmol KC", style: TextStyle(color: Colors.white)),
                  Spacer(),

                  Icon(Icons.more_vert, color: Colors.white),
                ],
              ),
              SizedBox(height: 10),

              Image.network(
                "https://m.media-amazon.com/images/M/MV5BMmM4NzJjNTQtZGU0Mi00NmJhLTkxMWQtYThiYjA2YjlhMjRkXkEyXkFqcGc@._V1_.jpg",
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 20),
                  Icon(Icons.favorite, color: Colors.red, size: 30),
                  SizedBox(width: 20),
                  Icon(Icons.comment, color: Colors.white, size: 30),
                  SizedBox(width: 20),
                  Icon(Icons.share, color: Colors.white, size: 27),
                  SizedBox(width: 20),
                  Spacer(),
                  Icon(Icons.bookmark, color: Colors.white, size: 27),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),

              const Row(
                children: [
                  SizedBox(width: 20),
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd3v30sfJPhPg2HSyg55Ur7X0v7Z7yug5fAQ&s",
                    ),
                  ),
                  SizedBox(width: 15),
                  Text("Routiney", style: TextStyle(color: Colors.white)),
                  Spacer(),

                  Icon(Icons.more_vert, color: Colors.white),
                ],
              ),
              SizedBox(height: 10),

              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL0lUWp4qROSsSNiflf_X9JHk_UI-jI3z7bQ&s",
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 20),
                  Icon(Icons.favorite, color: Colors.red, size: 30),
                  SizedBox(width: 20),
                  Icon(Icons.comment, color: Colors.white, size: 30),
                  SizedBox(width: 20),
                  Icon(Icons.share, color: Colors.white, size: 27),
                  SizedBox(width: 20),
                  Spacer(),
                  Icon(Icons.bookmark, color: Colors.white, size: 27),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),

              const Row(
                children: [
                  SizedBox(width: 20),
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(
                      "https://rajeshhamal.com.np/wp-content/uploads/2018/08/profile.jpg",
                    ),
                  ),
                  SizedBox(width: 15),
                  Text("Rajesh Hamal", style: TextStyle(color: Colors.white)),
                  Spacer(),

                  Icon(Icons.more_vert, color: Colors.white),
                ],
              ),
              SizedBox(height: 10),
              Image.network(
                "https://nepalnews.com/wp-content/uploads/2025/02/rajesh-hamal.jpg",
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 20),
                  Icon(Icons.favorite, color: Colors.red, size: 30),
                  SizedBox(width: 20),
                  Icon(Icons.comment, color: Colors.white, size: 30),
                  SizedBox(width: 20),
                  Icon(Icons.share, color: Colors.white, size: 27),
                  SizedBox(width: 20),
                  Spacer(),
                  Icon(Icons.bookmark, color: Colors.white, size: 27),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class Story {
  String? userName, storyImageUrl;
  Story({this.userName, this.storyImageUrl});
}
