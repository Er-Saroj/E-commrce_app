import 'package:first_ecommrce_app/widget/Home/Bottom_bar.dart';
import 'package:flutter/material.dart';

class Login_btn extends StatelessWidget {
  const Login_btn({
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BottomBarScreen()));
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
            "Login",
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
    );
  }
}
