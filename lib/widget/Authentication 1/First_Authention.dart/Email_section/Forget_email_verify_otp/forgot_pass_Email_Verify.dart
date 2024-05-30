// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, prefer_const_constructors_in_immutables

import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Forget_email_verify_otp/Components/Prosees_btn.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Forget_email_verify_otp/Components/otp_section.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Forget_email_verify_otp/Components/text_section_forgot.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Forgot_pass_mail_verify extends StatefulWidget {
  final String toastMessage;

  Forgot_pass_mail_verify({super.key, required this.toastMessage});
  @override
  _Forgot_pass_mail_verifyState createState() =>
      _Forgot_pass_mail_verifyState();
}

class _Forgot_pass_mail_verifyState extends State<Forgot_pass_mail_verify> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Fluttertoast.showToast(
        msg: widget.toastMessage,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 10,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0,
      );
    });
  }

  TextEditingController otpController = TextEditingController();
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 3,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(
          'Forgot Password',
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "02/",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                TextSpan(text: "03", style: TextStyle(color: Colors.black26))
              ])))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            text_section_forgot(),
            SizedBox(height: 30),
            // PinCodeFieldUtil.createPinCodeTextField(context, otpController,
            //     (value) {
            //   print("Completed: $value");
            // }, length: 6),
            ProceedButtonForget(),
          ],
        ),
      ),
    );
  }
}
