// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Singup_page/Create_acccount_btn.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Singup_page/Singin_with_google.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Singup_page/email_section.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Singup_page/name_section.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Singup_page/password_sec.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Singup_page/upper_logo.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/login_page/Login.dart';
import 'package:flutter/material.dart';

class Signup_page extends StatefulWidget {
  const Signup_page({super.key});

  @override
  State<Signup_page> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signup_page> {
  final _formKey = GlobalKey<FormState>();
  var No1textediting = TextEditingController();
  var No2textediting = TextEditingController();
  var No3textediting = TextEditingController();

  @override
  void dispose() {
    No1textediting.dispose();
    No2textediting.dispose();
    No3textediting.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            logo_part(),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 35),
              child: Text(
                "Signup",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Text("Already have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.cyan),
                      ))
                ],
              ),
            ),
            Full_name(),
            NameTextField(
              no1textediting: No1textediting,
            ),
            EmailSection(),
            EmailTextField(no2textediting: No2textediting),
            PassName(),
            PassTextField(
              No3textediting: No3textediting,
              no3TextEditing: null,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CreateAccountButton(formKey: _formKey),
            ),
            SizedBox(
              height: 15,
            ),
            Sing_google_btn(),
          ],
        ),
      ),
    ));
  }
}
