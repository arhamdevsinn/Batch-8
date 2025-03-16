
import 'package:demo/view/landing_screen.dart';
import 'package:demo/view/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),

                  Row(
                    children: [
                      Text("Username"),
                    ],
                  ),
                  TextFormField(
                     autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(),

                      hintText: "Type your username",

                      hintStyle: TextStyle(color: Colors.grey),

                      prefixIcon: Icon(
                        Icons.person_2_outlined,
                        color: Colors.grey,
                      ),

                      // focusedBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.cyan)
                      // )

                      // suffixIcon: Icon(Icons.visibility)

                      // suffix:

                      // hintText: "Username"
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  Row(
                    children: [
                      Text("Password"),
                    ],
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(),

                      hintText: "Type your password",

                      hintStyle: TextStyle(color: Colors.grey),

                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),

                      // focusedBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.cyan)
                      // )

                      // suffixIcon: Icon(Icons.visibility)

                      // suffix:

                      // hintText: "Username"
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot Password?"),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => LandingScreen()));
                      }
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(colors: [
                            Colors.cyan,
                            // Colors.blue,
                            const Color.fromARGB(255, 216, 43, 247),
                          ])),
                      child: Center(
                          child: Text(
                        "LOGIN",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Text("Or Sign Up Using"),

                  SizedBox(
                    height: 20,
                  ),

                  //  Hex Colors
                  //   #3B5898
                  //  0xff

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xff3B5898),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xff1EA0FC),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xffE44736),
                      )
                    ],
                  ),

                  //  Spacer(),

                  Text("Have not account yet?"),

                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SignupScreen()));
                      },
                      child: Text("SIGN UP")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
