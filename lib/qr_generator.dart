import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGenerator extends StatefulWidget {
  const QrGenerator({super.key});
  String qrValue() {
    var data = {"name": "Aashik Basnet", "age": 20, "address": "Panauti"};
    return data.toString();
  }

  @override
  State<QrGenerator> createState() => _QrGeneratorState();
}

class _QrGeneratorState extends State<QrGenerator> {
  int accountNumber = 23456789013468;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 10,
                      right: 10,
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 2, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(0, 3), // Offset in x and y
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "AASHIK BASNET",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Color(0xff006380),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      "Primary",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Kumari Monthly Savings"),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30.0),
                                  child: Icon(Icons.share, size: 30),
                                ),
                              ],
                            ),
                            Row(children: [Text('$accountNumber')]),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  Container(
                    height: MediaQuery.of(context).size.height * 0.60,
                    width: MediaQuery.of(context).size.width * 0.94,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,

                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 2, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset: Offset(0, 3), // Offset in x and y
                        ),
                      ],
                    ),

                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.28,
                          width: MediaQuery.of(context).size.width * 0.85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(6),
                              topRight: Radius.circular(6),
                            ),
                            border: Border.all(
                              color: Colors.grey.shade300, // Light border color
                              width: 1.5,
                            ),
                          ),
                          child: Center(
                            child: SizedBox(
                              height: 180,
                              width: 180,
                              child: QrImageView(
                                data: widget.qrValue(),
                                version: QrVersions.auto,
                                size: 200,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 0.85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(6),
                              bottomRight: Radius.circular(6),
                            ),
                            border: Border.all(
                              color: Colors.grey.shade300, // Light border color
                              width: 1.5,
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/images/qrlogo.png",
                              height: 100,
                              width: 100,
                              fit: BoxFit.contain,
                              // Optional: scale/crop image to fit
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.16,
                          width: MediaQuery.of(context).size.width * 0.85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: const Color.fromARGB(
                                255,
                                59,
                                63,
                                148,
                              ), // Light border color
                              width: 1.5,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14.0, top: 8),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                      color: Color.fromARGB(255, 59, 63, 148),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "You will be sharing the \n following information.",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 59, 63, 148),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "1. Full Name.",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                              255,
                                              59,
                                              63,
                                              148,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "2. Bank Name.",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 59, 63, 148),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "3.Bank Account Number",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 59, 63, 148),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
