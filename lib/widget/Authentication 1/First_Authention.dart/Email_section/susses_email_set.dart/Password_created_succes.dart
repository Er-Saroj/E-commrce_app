// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/susses_email_set.dart/text_section_susses.dart';
import 'package:flutter/material.dart';

class Password_Created_Successfully extends StatefulWidget {
  const Password_Created_Successfully({
    super.key,
  });

  @override
  State<Password_Created_Successfully> createState() =>
      _Password_Created_SuccessfullyState();
}

class _Password_Created_SuccessfullyState
    extends State<Password_Created_Successfully> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0, right: 10, left: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: Colors.cyan[50]),
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 250,
                        width: 350,
                        child: Image.asset("assert/photos/tala.png")),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          ),
          text_section_susses()
        ],
      ),
    );
  }
}
