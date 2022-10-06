import 'package:bookingapp/Login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Sign_screen extends StatefulWidget {
  const Sign_screen({Key? key}) : super(key: key);

  @override
  State<Sign_screen> createState() => _Sign_screenState();
}





class _Sign_screenState extends State<Sign_screen> {
  TextEditingController _Email = TextEditingController();
TextEditingController _password = TextEditingController();
bool eye = true;
  TextEditingController _name = TextEditingController();

  getuser() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _Email.text, password: _password.text);
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const Login_screen()));
    } catch (e) {
      showDialog(
          context: this.context,
          builder: (context) {
            return const AlertDialog(
              title: Text("Enter your details and try again"),
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
                "Sign In",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: size.height * 0.1),
               Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: TextField(
                  controller: _name,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.account_circle_rounded),
                      hintText: 'Enter your Name',
                      border: OutlineInputBorder()),
                ),
              ),

               Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
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
                  getuser();
                },
                child: const Text("Sign Up"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(child: Text("Already have account?")),
                  GestureDetector(
                    onTap: () {
                                          Navigator.push(context,MaterialPageRoute(builder: (context) => Login_screen(),) );

                    },
                    child: const Text(
                      "Login",
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
