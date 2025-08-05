import 'package:flutter/material.dart';
import 'package:flutter_app/instagram.dart';

class FutsalBooking extends StatelessWidget {
  FutsalBooking({super.key});
  final List<Futsal> futsalList = [
    Futsal(
      futsalName: "SR Futsal",
      address: "Dhulikhel",
      price: "Rs. 1000",
      futsalImage: "https://goalnepal.com/uploads/news/1627182357.jpg",
    ),
    Futsal(
      futsalName: "Kickoff Futsal",
      address: "Banepa, Ward 8",
      price: "Rs. 1200",
      futsalImage:
          "https://www.davbusinessschool.edu.np/storage/photos/3/Infrastructure/futsal123.jpg",
    ),
    Futsal(
      futsalName: "Bhaktapur Arena",
      address: "Sallaghari, Bhaktapur",
      price: "Rs. 1500",
      futsalImage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwauG0kTIbhnh-1o613rObKkwQObeFHB67Pg&s",
    ),
    Futsal(
      futsalName: "Banepa United Futsal",
      address: "Banepa, near KMC Hospital",
      price: "Rs. 1000",
      futsalImage:
          "https://www.greatsportstech.com/wp-content/uploads/2023/03/Astro-Park-Apollo-Hospitals.jpg",
    ),
    Futsal(
      futsalName: "City Sports Futsal",
      address: "Bhaktapur, Kamalbinayak",
      price: "Rs. 1300",
      futsalImage:
          "https://img.redbull.com/images/c_crop,w_1936,h_968,x_0,y_137/c_auto,w_1200,h_600/f_auto,q_auto/redbullcom/2018/07/09/4c915298-2e6b-4f78-8e3f-552407d975bd/futsal-match",
    ),
    Futsal(
      futsalName: "Sky Arena Futsal",
      address: "Sanga, near Kailashnath",
      price: "Rs. 1100",
      futsalImage:
          "https://www.bbs.bt/wp-content/uploads/2022/05/footsal-bumthang.jpg",
    ),
    Futsal(
      futsalName: "Galaxy Futsal",
      address: "Bhaktapur, Jagati",
      price: "Rs. 1200",
      futsalImage:
          "https://turftown.in/_next/image?url=https%3A%2F%2Fturftown.s3.ap-south-1.amazonaws.com%2Fsuper_admin%2Ftt-1723532590619.webp&w=828&q=75",
    ),
    Futsal(
      futsalName: "Highland Futsal",
      address: "Banepa-10, Ugrachandi",
      price: "Rs. 1000",
      futsalImage:
          "https://nepalnews.com/wp-content/uploads/2024/10/Futsal_ground1625660995.jpg",
    ),
    Futsal(
      futsalName: "Legends Turf",
      address: "Bhaktapur, Chardobato",
      price: "Rs. 1400",
      futsalImage:
          "https://anilblon.wordpress.com/wp-content/uploads/2015/08/futsal-in-nepal.jpg",
    ),
    Futsal(
      futsalName: "Buddha Arena Futsal",
      address: "Banepa, Bypass Road",
      price: "Rs. 1100",
      futsalImage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwHPnNrQ0dz7p1xGzKfTABScf2BSbyZX6m9A&s",
    ),
  ];

  final List<String> timeList = [
    "6:00-:7:00 AM",
    "7:00-8:00 AM",
    "8:00-9:00 AM",
    "9:00 -10:00 AM",
    "10-11 AM",
    "11-12 PM",
    "12-1 PM",
    "1-2 PM",
    "2-3 PM",
    "3-4 PM",
    "4-5 PM",
    "5-6 PM",
    "6-7 PM",
    "7-8 PM",
    "8-9 PM",
    "9-10 PM",
    "10-11 PM",
    "11-12 AM",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios, color: Color(0xFF1D8D80)),
        title: Text(
          "Futsal Booking",
          style: TextStyle(
            color: Color(0xFF1D8D80),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: "Search", //labeltext
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: timeList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: Color(0xFF1D8D80), // Background color
                        foregroundColor: Colors.white, // Text/Icon color
                      ),
                      onPressed: () {
                        // basic tap action
                      },
                      child: Text(
                        timeList[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold, // Bold text
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: futsalList.length,
              itemBuilder: (context, index) {
                final futsal = futsalList[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            futsal.futsalImage!,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                futsal.futsalName ?? '',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),

                              Text(
                                futsal.address ?? '',

                                style: const TextStyle(color: Colors.blueGrey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              futsal.price ?? '',
                              style: const TextStyle(color: Colors.blueGrey),
                            ),

                            SizedBox(
                              width: 80,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => Instagram(),
                                  //   ),
                                  // );
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  backgroundColor: const Color(0xFF1D8D80),
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 5,
                                  ),
                                ),
                                child: const Text("Book"),
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
        ],
      ),
    );
  }
}

class Futsal {
  String? futsalImage, futsalName, address, price;
  Futsal({this.futsalImage, this.futsalName, this.address, this.price});
}
