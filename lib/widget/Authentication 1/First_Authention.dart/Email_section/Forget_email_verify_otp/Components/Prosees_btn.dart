import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Forget_email_verify_otp/forgot_pass_Email_Verify.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Forget_email_verify_otp/Components/otp_section.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Forgot_pass_create_new/forget_pass_new_pass.dart';

class ProceedButtonForget extends StatefulWidget {
  @override
  _ProceedButtonForgetState createState() => _ProceedButtonForgetState();
}

class _ProceedButtonForgetState extends State<ProceedButtonForget> {
  TextEditingController pinController = TextEditingController();
  bool isPinComplete = false;

  void onPinCompleted(String pin) {
    setState(() {
      isPinComplete = pin.length == 6;
    });
  }

  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PinCodeFieldUtil.createPinCodeTextField(
          context,
          pinController,
          onPinCompleted,
          length: 6,
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Forgot_pass_mail_verify(
                          toastMessage:
                              'Otp 6 digit code has been send to your email again',
                        )));
          },
          child: Text(
            "Resend Code",
            style: TextStyle(color: Colors.cyan),
          ),
        ),
        Container(
          height: 55,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(11)),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              if (isPinComplete) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Forgot_Pass_new_pass()),
                );
              } else {
                _showToast('Please fill in the OTP section first.');
              }
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.black),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
            ),
            child: Text(
              "Proceed",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
