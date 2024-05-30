import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Singup_page/Signup.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/login_page/Login.dart';
import 'package:flutter/material.dart';

class Button_section3 extends StatelessWidget {
  Button_section3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            height: 58,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Login_page()));
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.white),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
              ),
              child: Text(
                "Login",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 58,
            width: 160,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Signup_page()));
              },
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ))),
              child: Row(
                children: [
                  Text(
                    "Singup",
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
