import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Forgot_pass_create_new/Components/cnfm_pass.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Forgot_pass_create_new/Components/pass_new.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/Forgot_pass_create_new/Components/text_section.dart';
import 'package:first_ecommrce_app/widget/Home/profile/profile.dart';
import 'package:flutter/material.dart';

class Old_New_in_Profile extends StatefulWidget {
  const Old_New_in_Profile({super.key});

  @override
  State<Old_New_in_Profile> createState() => _Forgot_Pass_new_passState();
}

class _Forgot_Pass_new_passState extends State<Old_New_in_Profile> {
  var No1textediting = TextEditingController();

  var No2textediting = TextEditingController();
  var sarojtext = Text(
    "data",
    style: TextStyle(color: Colors.amber),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 2,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          title: Text(
            "Change Password",
            style: TextStyle(fontSize: 16),
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
                  TextSpan(text: "02", style: TextStyle(color: Colors.black26))
                ])))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text_file_new(),
              password_new_textfield(No2textediting: No2textediting),
              Cirfirm_password_text(),
              Cnfm_pass_textfield(No1textediting: No1textediting),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Container(
                  height: 55,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(6)),
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.black),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ))),
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}
