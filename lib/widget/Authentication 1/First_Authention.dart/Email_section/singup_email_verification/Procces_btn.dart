import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/login_page/Login.dart';
import 'package:flutter/material.dart';

class Procces_btn extends StatelessWidget {
  const Procces_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        height: 55,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(11)),
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ))),
            child: Text(
              "Proceed",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
