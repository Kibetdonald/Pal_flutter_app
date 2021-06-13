import 'package:flutter/material.dart';

class MyPasswordTextFormField extends StatelessWidget {
  final bool obserText;
  final Function validator;
  final String name;
  final VoidCallback onTap;

  MyPasswordTextFormField(
      {required this.name,
      required this.obserText,
      required this.onTap,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obserText,
      // validator: validator,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: name,
        hintStyle: (TextStyle(color: Colors.black)),
        suffixIcon: GestureDetector(
          onTap: onTap,
          child: Icon(
            obserText == true ? Icons.visibility : Icons.visibility_off,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
