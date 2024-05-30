import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Singup_page/password_sec.dart';
import 'package:flutter/material.dart';

class text_file_new extends StatelessWidget {
  const text_file_new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0, top: 35, bottom: 8),
          child: Text(
            "New Password",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text("Enter your new password and remember it"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 14.0),
          child: PassName(),
        )
      ],
    );
  }
}

class Cirfirm_password_text extends StatelessWidget {
  const Cirfirm_password_text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 20),
      child: Row(
        children: [
          Text(" Confirm Password"),
          Icon(
            Icons.star,
            color: Colors.red,
            size: 8,
          )
        ],
      ),
    );
  }
}
