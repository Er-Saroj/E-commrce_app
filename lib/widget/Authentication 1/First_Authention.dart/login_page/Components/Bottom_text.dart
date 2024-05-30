import 'package:first_ecommrce_app/widget/Home/profile/Components/Support_Information/Privacy_policy.dart';
import 'package:first_ecommrce_app/widget/Home/profile/Components/Support_Information/Tearm_condition.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  const BottomText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(color: Colors.black, fontSize: 14),
          children: [
            TextSpan(text: "By Login, you agree to our "),
            TextSpan(
              text: "Privacy Policy ",
              style: TextStyle(color: Colors.blue, fontSize: 14),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Privacy_Policy()),
                  );
                },
            ),
            TextSpan(text: "and "),
            TextSpan(
              text: "Terms & Conditions,",
              style: TextStyle(color: Colors.blue, fontSize: 14),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tearm_Condition()),
                  );
                },
            ),
          ],
        ),
      ),
    );
  }
}
