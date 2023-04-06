// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: 150,
                ),
              ),
              Positioned(
                child: Image.asset("assets/images/main_bottom.png", width: 60),
                bottom: 0,
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "WELCOME TO EDU",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "font1",
                        fontSize: 20,
                        color: Colors.purple[200],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    SvgPicture.asset(
                      "assets/icons/chat.svg",
                      width: 320,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: Text(
                        "LOGIN",
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.purple),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                            horizontal: 100, vertical: 17)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(color: Colors.black54),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.purple[100]),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                        padding: MaterialStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 95, vertical: 17)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
