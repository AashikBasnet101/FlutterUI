import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/custom_elevated_button.dart';

class apihitter extends StatefulWidget {
  const apihitter({super.key});

  @override
  State<apihitter> createState() => _apihitterState();
}

class _apihitterState extends State<apihitter> {
  Response? response;
  bool loader = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CustomElevatedButton(
            child: loader
                ? CircularProgressIndicator(color: Colors.white)
                : Text("HIt API"),
            onPressed: () async {
              setState(() {
                loader = true;
              });
              Dio dio = Dio();
              try {
                response = await dio.get('https://dummyjson.com/users');
                setState(() {
                  response;
                  loader = false;
                });
              } catch (e) {
                print(e);
                setState(() {
                  loader = false;
                });
              }
            },
          ),

          response != null
              ? Expanded(
                  child: ListView.builder(
                    itemCount: response?.data['users'].length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name is ${response?.data['users'][index]['firstName']}",
                            ),
                            Text(
                              "Age is ${response?.data['users'][index]['age']}",
                            ),
                            Image.network(
                              response?.data['users'][index]['image'],
                            ),
                            Text(
                              "University is ${response?.data['users'][index]['university']}",
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              : loader == true
              ? Center(child: CircularProgressIndicator())
              : SizedBox(),
        ],
      ),
    );
  }
}
