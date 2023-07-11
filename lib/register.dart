import 'package:flutter/material.dart';
import 'package:myapp/login.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
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
                Color.fromARGB(255, 171, 162, 162),
                Color.fromARGB(255, 51, 50, 50),
              ])),
        ),
        Scaffold(
          appBar: AppBar(
            //
            backgroundColor: Colors.transparent,
            leading: GestureDetector(
                // for navigation
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ));
                },
                child: const Icon(Icons.arrow_back)),
          ),
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  top: MediaQuery.of(context).size.height * 0.01,
                ),
                child: Text(
                  'Create\nAccount',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.1,
                    color: Colors.white,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.2,
                      right: 35,
                      left: 35),
                  child: Column(
                    children: [
                      Name(),
                      const SizedBox(
                        height: 20,
                      ),
                      Email(),
                      const SizedBox(
                        height: 20,
                      ),
                      passward(),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          signIn(),
                          circleButton(),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
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
                                    color: Colors.white,
                                    decoration: TextDecoration.underline),
                              )),
                        ],
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
Widget Name() {
  return TextField(
    decoration: InputDecoration(
        prefixIcon: const Icon(Icons.people, color: Colors.white),
        hintText: 'Name',
        hintStyle: const TextStyle(color: Colors.white),
        // fillColor: Colors.yellow.shade100,
        // filled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white))),
  );
}

Widget Email() {
  return TextField(
    decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail, color: Colors.white),
        hintText: 'Email',
        hintStyle: const TextStyle(color: Colors.white),
        // fillColor: Colors.yellow.shade100,
        // filled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white))),
  );
}

Widget passward() {
  return TextField(
    obscureText: true,
    decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock, color: Colors.white),
        hintText: 'Passward',
        hintStyle: const TextStyle(color: Colors.white),
        // fillColor: Colors.yellow.shade100,
        // filled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white))),
  );
}

Widget signIn() {
  return const Text(
    "Sign In",
    style: TextStyle(fontSize: 20, color: Colors.white),
  );
}

Widget circleButton() {
  // forward arrow button
  return CircleAvatar(
    radius: 20,
    backgroundColor: Colors.white,
    child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_forward,
          color: Colors.black,
        )),
  );
}

Widget ForgotPassward() {
  return TextButton(
      onPressed: () {},
      child: const Text(
        'Forgot Passward',
        style: TextStyle(
            fontSize: 17,
            color: Colors.white,
            decoration: TextDecoration.underline),
      ));
}
