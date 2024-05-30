// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, camel_case_types, unused_import

import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Cnfm_email/send_btn.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Cnfm_email/text_section.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Cnfm_email/textfield_email.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/singup_email_verification/email_verification.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Forget_email_verify_otp/forgot_pass_Email_Verify.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Singup_page/email_section.dart';
import 'package:flutter/material.dart';

class Forrgate_pass_cnfm_email extends StatefulWidget {
  const Forrgate_pass_cnfm_email({super.key});

  @override
  State<Forrgate_pass_cnfm_email> createState() =>
      _Forrgate_pass_cnfm_emailState();
}

class _Forrgate_pass_cnfm_emailState extends State<Forrgate_pass_cnfm_email> {
  final _formKey = GlobalKey<FormState>();
  var No1textediting = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 2,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          title: Text(
            "Forgot Password",
            style: TextStyle(fontSize: 16),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "01/",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  TextSpan(text: "03", style: TextStyle(color: Colors.black26))
                ])))
          ],
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                confm_email(),
                enter_email(),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: EmailSection(),
                ),
                EmailTextField(
                  no2textediting: No1textediting,
                ),
                // Email_textfield_forgot(No1textediting: No1textediting),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Send_btn(formKey: _formKey),
                ),
              ],
            ),
          ),
        ));
  }
}
