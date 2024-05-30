import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Forgot_pass_create_new/Components/cnfm_pass.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Forgot_pass_create_new/Components/pass_new.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Forgot_pass_create_new/Components/save_btn_new.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Forgot_pass_create_new/Components/text_section.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Singup_page/password_sec.dart';
import 'package:flutter/material.dart';

class Forgot_Pass_new_pass extends StatefulWidget {
  const Forgot_Pass_new_pass({Key? key}) : super(key: key);

  @override
  State<Forgot_Pass_new_pass> createState() => _Forgot_Pass_new_passState();
}

class _Forgot_Pass_new_passState extends State<Forgot_Pass_new_pass> {
  var no1TextEditing = TextEditingController();
  var no2TextEditing = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 2,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Create Password",
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "03/",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "03",
                    style: TextStyle(color: Colors.black26),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text_file_new(),
            PassTextField(
              No3textediting: no2TextEditing,
              no3TextEditing: no2TextEditing,
            ),
            Cirfirm_password_text(),
            PassTextField(
              No3textediting: no1TextEditing,
              no3TextEditing: no1TextEditing,
            ),
            Save_btn_new(
              no1TextEditing: no1TextEditing,
              no2TextEditing: no2TextEditing,
            ),
          ],
        ),
      ),
    );
  }
}
