import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/susses_email_set.dart/Password_created_succes.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Save_btn_new extends StatelessWidget {
  final TextEditingController no1TextEditing;
  final TextEditingController no2TextEditing;

  const Save_btn_new({
    Key? key,
    required this.no1TextEditing,
    required this.no2TextEditing,
  }) : super(key: key);

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
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
      child: Container(
        height: 55,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            if (no1TextEditing.text == no2TextEditing.text) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Password_Created_Successfully(),
                ),
              );
            } else {
              _showToast('Passwords do not match please try again');
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
            "Save",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
