import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Cnfm_email/forgate_pass_cnfm_email_.dart';
import 'package:flutter/material.dart';

class Text_btn_forgert_login extends StatelessWidget {
  const Text_btn_forgert_login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Forrgate_pass_cnfm_email()));
              },
              child: Text(
                "Forgot password",
                style: TextStyle(color: Colors.cyan),
              )),
        ],
      ),
    );
  }
}
