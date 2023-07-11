import 'dart:js';

import 'package:flutter/material.dart';
import 'package:myapp/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.black,
                Color.fromARGB(255, 107, 156, 242),
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 255, 255, 255),
              ])),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1,
                    top: MediaQuery.of(context).size.height * 0.04),
                child: Text(
                  'Welcome\nBack',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.07,
                    color: Colors.white,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.3,
                      right: 35,
                      left: 35),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Email(),
                      const SizedBox(
                        height: 30,
                      ),
                      passward(),
                      const SizedBox(
                        height: 25,
                      ),
                      SingleChildScrollView(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            signIn(),
                            circleButton(),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      SingleChildScrollView(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MyRegister(),
                                      ));
                                },
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      decoration: TextDecoration.underline),
                                )),
                            ForgotPassward(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

// ignore: non_constant_identifier_names
Widget Email() {
  return TextField(
    decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail, color: Colors.black),
        hintText: 'Email',
        hintStyle: const TextStyle(color: Colors.black),

        // fillColor: Colors.yellow.shade100,
        // filled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black)),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        )),
  );
}

Widget passward() {
  return TextField(
    obscureText: true,
    decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock, color: Colors.black),
        hintText: 'Passward',
        hintStyle: const TextStyle(color: Colors.black),
        // fillColor: Colors.yellow.shade100,
        // filled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black))),
  );
}

Widget signIn() {
  return const Text(
    "Sign In",
    style: TextStyle(fontSize: 20, color: Colors.black),
  );
}

Widget circleButton() {
  // forward arrow button
  return CircleAvatar(
    radius: 20,
    backgroundColor: Colors.black,
    child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        )),
  );
}

Widget ForgotPassward() {
  return TextButton(
      onPressed: () {},
      child: const Text(
        'Forgot\nPassward',
        style: TextStyle(
            fontSize: 13,
            color: Colors.black,
            decoration: TextDecoration.underline),
      ));
}
