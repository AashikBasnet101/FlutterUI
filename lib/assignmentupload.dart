import 'package:flutter/material.dart';

class Assignmentupload extends StatelessWidget {
  Assignmentupload({super.key});
  String? faculty, semester;

  List<String> genderList = ["Male", "Female", "Others"];
  List<String> semesterList = [
    "1st",
    "2nd",
    "3rd",
    "4th",
    "5th",
    "6th",
    "7th",
    "8th",
  ];
  List<String> facultyList = ["BCA", "BITM", "CSIT"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Create Assignment"),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: 24,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 12, right: 12),
              child: DropdownButtonFormField(
                validator: (value) {
                  if (value == null) {
                    return ("please select your Faculty");
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: "Faculty",
                  border: OutlineInputBorder(),
                ),
                items: facultyList
                    .map((a) => DropdownMenuItem(child: Text(a), value: a))
                    .toList(),
                onChanged: (value) {
                  faculty = value;
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 12, right: 12),
              child: DropdownButtonFormField(
                validator: (value) {
                  if (value == null) {
                    return ("please select your semester");
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: "Semester",
                  border: OutlineInputBorder(),
                ),
                items: semesterList
                    .map((a) => DropdownMenuItem(child: Text(a), value: a))
                    .toList(),
                onChanged: (value) {
                  semester = value;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 12, right: 12),
              child: SizedBox(
                height: 45,
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Title",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 12, right: 12),
              child: SizedBox(
                height: 200,
                child: TextFormField(
                  maxLines: null,
                  expands: true,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: const InputDecoration(
                    labelText: "Description",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {},
              child: Column(children: [Icon(Icons.upload), Text("Upload")]),
            ),
          ],
        ),
      ),
    );
  }
}
