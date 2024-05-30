import 'package:first_ecommrce_app/widget/Home/profile/Components/Account_manage/New_pass_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Change_Pass extends StatelessWidget {
  Change_Pass({super.key});
  var PasswordController = TextEditingController();

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
                      text: "01/",
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
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 35),
                child: Text(
                  "Old Password",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "Enter old password to change the password",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 20),
                child: Row(
                  children: [
                    Text("Password"),
                    Icon(
                      Icons.star,
                      color: Colors.red,
                      size: 8,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(color: Colors.cyan, width: 1)),
                    child: TextField(
                      controller: PasswordController,
                      decoration: InputDecoration(
                          hintText: "   Enter Your password",
                          hintStyle: TextStyle(color: Colors.black12),
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Container(
                  height: 55,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(6)),
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Old_New_in_Profile()));
                      },
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.black),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ))),
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}
