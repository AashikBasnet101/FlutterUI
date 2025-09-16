import 'package:flutter/material.dart';
import 'package:flutter_app/qr_generator.dart';
import 'package:flutter_app/qr_scanner.dart';

class TogglePage extends StatefulWidget {
  TogglePage({super.key});

  @override
  State<TogglePage> createState() => _TogglePageState();
}

class _TogglePageState extends State<TogglePage> {
  List<bool> isSelected = [true, false];
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff006380),
        title: const Text(
          "Scan and Share",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            color: Color(0xff006380),
            child: Column(
              children: [
                Center(
                  child: ToggleButtons(
                    fillColor: Colors.white, // Selected button color
                    color: Colors.white, // Unselected text color
                    selectedColor: Color(0xff006380), // Selected text color
                    borderRadius: BorderRadius.circular(12),

                    children: [
                      SizedBox(
                        height: 30,
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: const Center(
                          child: Text(
                            "Scan",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: const Center(
                          child: Text(
                            "Share",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],

                    isSelected: isSelected,

                    onPressed: (int index) {
                      setState(() {
                        if (index == 1) {
                          isSelected[0] = false;
                          isSelected[1] = true;
                          pageController.nextPage(
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          isSelected[0] = true;
                          isSelected[1] = false;
                          pageController.previousPage(
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        }
                      });
                    },
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: PageView(
                    onPageChanged: (value) {
                      setState(() {
                        if (value == 1) {
                          isSelected[0] = false;
                          isSelected[1] = true;
                          pageController.nextPage(
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          isSelected[0] = true;
                          isSelected[1] = false;
                          pageController.previousPage(
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        }
                      });
                    },
                    controller: pageController,
                    children: [QRScannerPage(), QrGenerator()],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
