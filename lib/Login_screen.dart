import 'package:bookingapp/sign_screen.dart';
import 'package:bookingapp/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({Key? key}) : super(key: key);

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  TextEditingController _Email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool eye = true;

  getSignin() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _Email.text, password: _password.text);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => WelcomeScreen(),
        ),
      );
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("User does not exist"),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Image.asset("assets/Air.png", height: size.height * 0.4),
              const Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: size.height * 0.1),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  controller: _Email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.email),
                      hintText: 'Enter your Email',
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                child: TextField(
                  controller: _password,
                  obscureText: eye,
                  maxLength: 6,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              eye = !eye;
                            });
                          },
                          child: Icon(Icons.remove_red_eye)),
                      hintText: 'Enter 6 digit Password',
                      border: OutlineInputBorder()),
                ),
              ),
              //SizedBox(height: size.height*0.1,),
              ElevatedButton(
                onPressed: () {
                  getSignin();
                },
                child: const Text("Login"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(child: Text("Don't have account?")),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sign_screen(),
                          ));
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
