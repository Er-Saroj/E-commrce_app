import 'package:first_ecommrce_app/widget/Home/profile/Components/Account_manage/Change_pass.dart';
import 'package:first_ecommrce_app/widget/Home/profile/Components/Personal_ingormation/Order_history/Order_History.dart';
import 'package:first_ecommrce_app/widget/Home/profile/Components/Personal_ingormation/Payment_method/Payment_method.dart';
import 'package:first_ecommrce_app/widget/Home/profile/Components/Personal_ingormation/Pesonal_info.dart';
import 'package:first_ecommrce_app/widget/Home/profile/Components/Personal_ingormation/Shopping/Shopping_add.dart';
import 'package:first_ecommrce_app/widget/Home/profile/Components/Support_Information/FAQs.dart';
import 'package:first_ecommrce_app/widget/Home/profile/Components/Support_Information/Privacy_policy.dart';
import 'package:first_ecommrce_app/widget/Home/profile/Components/Support_Information/Support_info.dart';
import 'package:first_ecommrce_app/widget/Home/profile/Components/Support_Information/Tearm_condition.dart';
import 'package:first_ecommrce_app/widget/Home/profile/heading_text.dart';
import 'package:first_ecommrce_app/widget/Home/profile/name_profile.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(children: [
      Container(
        color: Colors.cyan,
        height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Name_profile(),
            ],
          ),
        ),
      ),
      Padding(
          padding: const EdgeInsets.only(top: 120.0),
          child: Container(
            height: 700,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(25),
                right: Radius.circular(25),
              ),
              color: _isSwitched ? Colors.black : Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Personal_info_text(isSwitched: _isSwitched),
                  Personal_info_details(isSwitched: _isSwitched),
                  support_info_text(isSwitched: _isSwitched),
                  Support_info_details(isSwitched: _isSwitched),
                  Account_manage(isSwitched: _isSwitched),
                  SizedBox(
                    height: 48,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Change_Pass()));
                      },
                      child: ListTile(
                          leading: Image.asset(
                            "assert/profile-logo/pass-change.png",
                            width: 25,
                            color: _isSwitched ? Colors.white : Colors.black54,
                          ),
                          title: Text(
                            "Change Password",
                            style: TextStyle(
                              color: _isSwitched ? Colors.white : Colors.black54,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: _isSwitched ? Colors.white : Colors.black54,
                          )),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assert/profile-logo/term.png",
                      width: 25,
                      color: _isSwitched ? Colors.white : Colors.black54,
                    ),
                    title: Text(
                      "Dark Theme",
                      style: TextStyle(
                        color: _isSwitched ? Colors.white : Colors.black54,
                      ),
                    ),
                    trailing: Switch(
                      splashRadius: 10,
                      thumbColor: WidgetStateProperty.all(Colors.white),
                      activeColor: Colors.cyan,
                      value: _isSwitched,
                      onChanged: (value) {
                        setState(() {
                          _isSwitched = value;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ))
    ])));
  }
}
