import 'package:flutter/material.dart';

class Elevated_save_btn extends StatelessWidget {
  const Elevated_save_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: Container(
        height: 58,
        width: 350,
        child: ElevatedButton(
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Signup_page()));
            },
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ))),
            child: Text(
              "Save",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
