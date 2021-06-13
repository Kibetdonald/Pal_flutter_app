import 'package:flutter/material.dart';
import 'package:pal/signup.dart';

// import 'package:pal/widgets/changescreen.dart';
import 'package:pal/widgets/mybutton.dart';
import 'package:pal/widgets/mytextformfield.dart';
import 'package:pal/widgets/passwordTextFormField.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
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

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 270,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
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
                    MyPasswordTextFormField(
                      obserText: obserText,
                      name: "Enter password",
                      validator: (value) {
                        if (value == "") {
                          return "Enter password";
                        } else if (value!.length < 8) {
                          return "Password is too short";
                        }
                        return "";
                      },
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        setState(() {
                          obserText = !obserText;
                        });
                      },
                    ),
                    MyButton(
                      onPressed: () {
                        validation();
                      },
                      name: "Login",
                    ),
                    //Don't have an account here
                    Row(
                      children: [
                        Text("Don't have an account"),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (ctx) => SignUp()));
                            },
                            child: Text("Register",
                                style: TextStyle(
                                  color: Colors.cyan,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ],
                    ),
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
