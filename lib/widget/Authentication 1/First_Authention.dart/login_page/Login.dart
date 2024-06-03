import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Singup_page/Signup.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Singup_page/email_section.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Singup_page/password_sec.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/login_page/Components/Bottom_text.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/login_page/Components/Forget_textbtn.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/login_page/Components/Google_btn.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/login_page/Components/Login_btn.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  var no1TextEditing = TextEditingController();
  var no2TextEditing = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0, left: 12),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 10),
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset("assert/photos/circle.png"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        "uickMart",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 35),
                child: Text(
                  "Login",
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
                            builder: (context) => Signup_page(),
                          ),
                        );
                      },
                      child: Text(
                        "Signup",
                        style: TextStyle(color: Colors.cyan),
                      ),
                    ),
                  ],
                ),
              ),
              EmailSection(),
              EmailTextField(no2textediting: no2TextEditing),
              PassName(),
              PassTextField(
                no3TextEditing: no1TextEditing,
                No3textediting: no1TextEditing,
              ),
              Text_btn_forgert_login(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Login_btn(formKey: _formKey),
              ),
              SizedBox(height: 15),
              Signup_with_google_btn(),
              SizedBox(height: 100),
              BottomText(),
            ],
          ),
        ),
      ),
    );
  }
}
