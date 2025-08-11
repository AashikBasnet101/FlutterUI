import 'package:flutter/material.dart';
import 'package:flutter_app/string_const.dart';

class StackTest extends StatefulWidget {
  const StackTest({super.key});

  @override
  State<StackTest> createState() => _StackTestState();
}

class _StackTestState extends State<StackTest> {
  bool _showBalance = false;

  double balance = 20000.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff006380),
            ),
            Container(
              child: Image.asset(
                "assets/images/kumari.jpg",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 45,
                          height: 55,
                          child: Image.asset("assets/images/kumaribank.png"),
                        ),

                        Row(
                          children: [
                            Icon(Icons.search, size: 30, color: Colors.white),
                            SizedBox(width: 16),

                            Icon(Icons.photo, size: 22, color: Colors.white),
                            SizedBox(width: 16),

                            Stack(
                              children: [
                                Icon(
                                  Icons.notifications_outlined,
                                  size: 30,
                                  color: Colors.white,
                                ),

                                Positioned(
                                  right: 0,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.yellow,
                                    radius: 8,
                                    child: Text(
                                      "8",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 16),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                            color: Colors.transparent,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "AB",
                            style: TextStyle(fontSize: 35, color: Colors.white),
                          ),
                        ),

                        SizedBox(width: 14),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Good Afternoon,",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "AASHIK",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 20),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      height: 90,

                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                SizedBox(width: 6),
                                Icon(Icons.wallet),
                                SizedBox(width: 10),
                                Text("XXXX XXXX XXXXX"),
                              ],
                            ),

                            const SizedBox(height: 4),

                            const Row(
                              children: [
                                SizedBox(width: 6),
                                Text("XXXXXXXXXX"),
                              ],
                            ),

                            const SizedBox(height: 12),

                            Row(
                              children: [
                                const SizedBox(width: 6),
                                Text(
                                  _showBalance
                                      ? "Rs. ${balance.toStringAsFixed(2)}"
                                      : "XXX XXX.XX",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _showBalance = !_showBalance;
                                    });
                                  },
                                  child: Icon(
                                    _showBalance
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.teal,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    Container(
                      height: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Text(
                                  "My Section",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "View All",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Icon(Icons.arrow_forward_ios, size: 12),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: sectionList.map((item) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6.0),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                          255,
                                          214,
                                          143,
                                          89,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          item['icon'],
                                          width: 30,
                                          height: 30,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    item['title'],
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    //Account Services
                    Container(
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Text(
                                  "Account Services",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "View All",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Icon(Icons.arrow_forward_ios, size: 12),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: accountList.map((item) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6.0),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                          255,
                                          81,
                                          169,
                                          227,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          item['icon'],
                                          width: 30,
                                          height: 30,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  SizedBox(
                                    width: 60,
                                    child: Text(
                                      item['title'],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 12),
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),

                    //Banking Services
                    Container(
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Text(
                                  "Banking Services",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "View All",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Icon(Icons.arrow_forward_ios, size: 12),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: bankingList.map((item) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6.0),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                          255,
                                          170,
                                          78,
                                          171,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          item['icon'],
                                          width: 30,
                                          height: 30,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    item['title'],
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    Container(
                      height: 90,
                      color: Colors.white,

                      child: Column(
                        children: [
                          Row(children: [Text("HElllo aashik"), Text("hello")]),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    Container(
                      height: 90,
                      color: Colors.white,

                      child: Column(
                        children: [
                          Row(children: [Text("HElllo aashik"), Text("hello")]),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    Container(
                      height: 90,
                      color: Colors.white,

                      child: Column(
                        children: [
                          Row(children: [Text("HElllo aashik"), Text("hello")]),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    Container(
                      height: 90,
                      color: Colors.white,

                      child: Column(
                        children: [
                          Row(children: [Text("HElllo aashik"), Text("hello")]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
