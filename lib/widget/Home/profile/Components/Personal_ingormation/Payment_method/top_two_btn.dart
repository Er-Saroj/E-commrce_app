import 'package:flutter/material.dart';

class Top_two_btn extends StatelessWidget {
  const Top_two_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Container(
            height: 58,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
            ),
            child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Login_page()));
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.cyan[50]),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),
                child: Image.asset(
                  "assert/profile-logo/paypal.png",
                  width: 65,
                )),
          ),
          Spacer(),
          Container(
            height: 58,
            width: 170,
            child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Signup_page()));
                },
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.cyan[50]),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ))),
                child: Image.asset(
                  "assert/profile-logo/G-pay.png",
                  width: 65,
                )),
          ),
        ],
      ),
    );
  }
}
