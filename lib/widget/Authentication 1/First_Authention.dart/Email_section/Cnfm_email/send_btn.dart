import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Forget_email_verify_otp/forgot_pass_Email_Verify.dart';
import 'package:flutter/material.dart';

class Send_btn extends StatelessWidget {
  const Send_btn({
    super.key,
    required this.formKey,
  });
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            if (formKey.currentState?.validate() ?? false) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Forgot_pass_mail_verify(
                            toastMessage:
                                'Otp 6 digit code has been send to your email',
                          )));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Please enter a valid email address')),
              );
            }
          },
          style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.black),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11),
              ))),
          child: Text(
            "Send OTP",
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
    );
  }
}
