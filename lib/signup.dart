import 'package:flutter/material.dart';
import 'package:pal/login.dart';
import 'package:pal/widgets/mybutton.dart';
import 'package:pal/widgets/mytextformfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);
bool obserText = true;
void validation() {
  final FormState? _form = _formKey.currentState;
  if (_form!.validate()) {
    print("Yes");
  } else {
    print("No");
  }
}

class _SignUpState extends State<SignUp> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Container(
                height: 180,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == "") {
                          return "Name is required";
                        } else if (value!.length < 6) {
                          return 'Name is too short';
                        }
                        return "";
                      },
                      decoration: InputDecoration(
                        hintText: ("Enter username"),
                        hintStyle: (TextStyle(color: Colors.black)),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    MyTextFormField(
                      name: "Enter Email Address",
                      validator: (value) {
                        if (value == "") {
                          return "Email address required";
                        } else if (regExp.hasMatch(value!)) {
                          return "Email address is invalid";
                        }

                        return "";
                      },
                    ),
                    TextFormField(
                      obscureText: obserText,
                      validator: (value) {
                        if (value == "") {
                          return "Enter password";
                        } else if (value!.length < 8) {
                          return "Password is too short";
                        }
                        return "";
                      },
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obserText = !obserText;
                            });
                            FocusScope.of(context).unfocus();
                          },
                          child: Icon(
                            obserText == true
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                        ),
                        hintText: ("Enter password"),
                        hintStyle: (TextStyle(color: Colors.black)),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == "") {
                          return "Enter phone number";
                        } else if (value!.length < 10) {
                          return "Phone number must be 10 characters";
                        }
                        return "";
                      },
                      decoration: InputDecoration(
                        hintText: ("Enter phone number"),
                        hintStyle: (TextStyle(color: Colors.black)),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    MyButton(
                        name: "Sign Up",
                        onPressed: () {
                          validation();
                        })
                  ]),
            ),
            Row(
              children: [
                Text('I already have an account'),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (ctx) => Login()));
                    },
                    child: Text('Login',
                        style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
