// ignore_for_file: prefer_const_constructors, sort_child_properties_last, deprecated_member_use, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                bottom: 0,
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: 50,
                  color: Colors.purple[200],
                ),
              ),
              Positioned(
                child: Image.asset("assets/images/signup_top.png", width: 130),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "SIGNUP",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "font1",
                        fontSize: 20,
                        color: Colors.purple[200],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SvgPicture.asset(
                      "assets/icons/signup.svg",
                      width: 240,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.purple[100],
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 65),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                          decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: "Email",
                        border: InputBorder.none,
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.purple[100],
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 65),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: Icon(Icons.lock),
                            hintText: "Password",
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.remove_red_eye),
                          )),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account ? ",
                            style: TextStyle(
                              color: Colors.purple[300],
                            )),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/login");
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 120,
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: .3,
                                  color: Colors.purple[200],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "OR",
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 120,
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: .3,
                                  color: Colors.purple[200],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(15),
                              child: SvgPicture.asset(
                                  "assets/icons/facebook.svg",
                                  color: Colors.purple,
                                  height: 24),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.purple, width: 1),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(15),
                              child: SvgPicture.asset(
                                  "assets/icons/google-plus.svg",
                                  color: Colors.purple,
                                  height: 24),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.purple, width: 1),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(15),
                              child: SvgPicture.asset(
                                  "assets/icons/twitter.svg",
                                  color: Colors.purple,
                                  height: 24),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.purple, width: 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
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
