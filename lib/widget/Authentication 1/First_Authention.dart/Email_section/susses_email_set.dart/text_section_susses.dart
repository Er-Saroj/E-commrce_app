import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/susses_email_set.dart/login_btn_susses.dart';
import 'package:flutter/material.dart';

class text_section_susses extends StatelessWidget {
  const text_section_susses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "New Password set successfully",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Congratulations! Your password has been set successfully. Please proceed to the login screen to verify your account.",
              textAlign: TextAlign.center,
            ),
          ),
          Login_btn_susses(),
        ],
      ),
    );
  }
}
