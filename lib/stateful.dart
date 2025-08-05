import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int value = 0;
  bool loveReact = false;
  bool passwordVisibility = false;
  bool confirmPasswordVisibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("$value", style: TextStyle(color: Colors.black, fontSize: 30)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  if (loveReact) {
                    loveReact = false;
                  } else {
                    loveReact = true;
                  }
                  setState(() {
                    loveReact;
                  });
                },

                icon: Icon(
                  loveReact ? Icons.favorite : Icons.favorite_border,
                  size: 30,
                  color: loveReact ? Colors.red : Colors.black,
                ),
              ),
              Text(loveReact ? "1 Like" : ""),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: TextFormField(
              obscureText: passwordVisibility == true ? false : true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      if (passwordVisibility) {
                        passwordVisibility = false;
                      } else {
                        passwordVisibility = true;
                      }
                    });
                  },
                  icon: Icon(
                    passwordVisibility
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                ),
                labelText: "password",
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              obscureText: confirmPasswordVisibility ? false : true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      if (confirmPasswordVisibility) {
                        confirmPasswordVisibility = false;
                      } else {
                        confirmPasswordVisibility = true;
                      }
                    });
                  },
                  icon: Icon(
                    confirmPasswordVisibility
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                ),
                labelText: "confirm Password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
