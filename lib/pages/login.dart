// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_project1_level1/pages/signup.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/login_bottom.png",
                  width: 150,
                ),
              ),
              Positioned(
                child: Image.asset("assets/images/main_top.png", width: 130),
              ),
              Center(
                
                child: Column(
                  
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "LOGIN",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "font1",
                        fontSize: 20,
                        color: Colors.purple[200],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SvgPicture.asset(
                      "assets/icons/login.svg",
                      width: 320,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dont have an account ? ",
                         style: TextStyle(color: Colors.purple[300],)
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/signup");
                          },
                          child: Text("Sign Up",
                          style: TextStyle(color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          ),
                          
                          
                          ),
                        )
                      ],
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
