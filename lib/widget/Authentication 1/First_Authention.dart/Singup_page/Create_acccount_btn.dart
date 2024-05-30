import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/singup_email_verification/email_verification.dart';
import 'package:flutter/material.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({
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
                      builder: (context) => OTPVerificationScreen(
                            toastMessage:
                                "6-digit Verification code has been sent to your email address.",
                          )));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content:
                        Text('Can not create Acoount Please check details')),
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
            "Create Account",
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
    );
  }
}
