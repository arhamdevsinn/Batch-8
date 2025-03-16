import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "SignUp",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),

                Row(
                  children: [
                    Text("Username"),
                  ],
                ),
                TextFormField(
                  
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter username';
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
                  height: 20,
                ),

                Row(
                  children: [
                    Text("Password"),
                  ],
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Password';
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
                  children: [
                    Text("Confirm Password"),
                  ],
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Confirm Password';
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
                  children: [
                    Text("Email"),
                  ],
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Email';
                    } else if (!value.contains("@")) {
                      return 'Please enter Valid Email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    // border: OutlineInputBorder(),

                    hintText: "Type your Email",

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
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      
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
                      "signup".toUpperCase(),
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

                // Spacer(),

                Text("Have not account yet?"),

                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen() ));
                    },
                    child: Text("SIGN IN")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// Validation
// AND
// Authentication



// Form Widget .
// Key connect .
// TextFormFeild .
// Valiators .
// Button validate() .