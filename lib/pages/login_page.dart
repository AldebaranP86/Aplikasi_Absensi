// ignore_for_file: use_build_context_synchronously, prefer_const_constructors_in_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'user-not-found') {
        wrongEmailMessage();
      }

      else if (e.code == 'wrong-password') {
        wrongPasswordMessage();
      }
    }
  }
  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text("Incorrect Email"),
          
        );
      },
    );
  }

  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text("Incorrect Password"),
        );
      },
    );
  }

  late bool hidden;
@override
void initState() {
    hidden = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Halaman Login",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: const Image(
                    image: AssetImage("assets/images/logoptsos.png"),
                    width: 200,
                    height: 150,
                    ),
                ), 

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        offset: Offset(4, 8),
                      )
                    ]
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 2),
                            child: Text(
                              "Welcome",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20, top: 2, bottom: 40),
                            child: Text(
                              "Solusi Optima Sarana",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                 Container(
                  padding: const EdgeInsets.all(10),
                   child: TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        hintText: "Masukkkan Email",
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email, color: Colors.black87,),
                        border: OutlineInputBorder(),
                      ),
                      obscureText: false,
                    ),
                 ),
                 const SizedBox(height: 15),
                 Container(
                  padding: const EdgeInsets.all(10),
                   child: TextField(
                      controller: passwordController,
                      decoration:  InputDecoration(
                        hintText: "Masukkkan Password",
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.lock, color: Colors.black87),
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            hidden = !hidden;
                          });
                        }, icon: const Icon(Icons.remove_red_eye_outlined, size: 35))
                        ),
                        obscureText: hidden,
                    ),
                 ),
                 const SizedBox(height: 15,),
                    
                // forgot password?
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                          onPressed: signUserIn,
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shadowColor: Colors.grey,
                            elevation: 10,
                            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            )
                          ), child: const Text("LOGIN",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 10,
                              color: Colors.white,
                           ),
                         ),
                     ),
                ), 
              ],
            ),
          ),
        ),
        ]
      ),
    );
  }
}