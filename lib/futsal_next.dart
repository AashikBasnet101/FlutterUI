import 'package:flutter/material.dart';

class Football extends StatelessWidget {
  Football({super.key});
  final List<Futsal> futsalList = [
    Futsal(
      futsalName: "Bhaktapur Arena",
      address: "Bhaktapur",
      cupName: "Khasi Cup",
      futsalImage:
          "https://www.enepalese.com/wp-content/uploads/2022/08/Picture2.jpg",
    ),
    Futsal(
      futsalName: "Kickoff Futsal",
      address: "Banepa",
      cupName: "Corporate Futsal Cup",
      futsalImage:
          "https://nrssportsfoundation.org.np/uploads/original/277798101-107377478597017-1306446545969368705-n-K7hOP9mWL640BHU6I5km7CEvWHpZfQWy9eX49hGO.jpg",
    ),
    Futsal(
      futsalName: "SR Futsal",
      address: "Dhulikhel",
      cupName: "New Year Cup 2081",
      futsalImage:
          "https://www.shutterstock.com/image-vector/soccer-template-design-football-banner-600nw-2172254649.jpg",
    ),

    Futsal(
      futsalName: "Banepa United Futsal",
      address: "Banepa, near KMC Hospital",
      cupName: "Spring Cup 2081",
      futsalImage:
          "https://www.greatsportstech.com/wp-content/uploads/2023/03/Astro-Park-Apollo-Hospitals.jpg",
    ),
    Futsal(
      futsalName: "City Sports Futsal",
      address: "Bhaktapur, Kamalbinayak",
      cupName: "Bhaktapur Open Cup",
      futsalImage:
          "https://img.redbull.com/images/c_crop,w_1936,h_968,x_0,y_137/c_auto,w_1200,h_600/f_auto,q_auto/redbullcom/2018/07/09/4c915298-2e6b-4f78-8e3f-552407d975bd/futsal-match",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Events"),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                // Your action here
              },
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),

            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "search events",
                //labeltext
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Trending Events",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: ListView.builder(
                itemCount: futsalList.length,
                itemBuilder: (context, index) {
                  final futsal = futsalList[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Top Banner Image
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              futsal.futsalImage!,
                              height: 150,
                              width: MediaQuery.of(context).size.width * 0.95,
                            ),
                          ),
                          const SizedBox(height: 10),

                          // Futsal name + location row
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 12,
                                backgroundImage: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
                                ),
                              ),
                              const SizedBox(width: 6),
                              Expanded(
                                child: Text(
                                  futsal.futsalName ?? '',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.location_on_outlined,
                                size: 16,
                                color: Colors.grey,
                              ),
                              Text(
                                futsal.address ?? '',
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),

                          const SizedBox(height: 6),

                          // Cup name + Join Button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                futsal.cupName ?? '',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              SizedBox(
                                height: 35,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF1D8D80),
                                    foregroundColor: Colors.white,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 8,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: const Text("Join"),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Futsal {
  String? futsalImage, futsalName, cupName, address;
  Futsal({this.futsalImage, this.futsalName, this.address, this.cupName});
}
