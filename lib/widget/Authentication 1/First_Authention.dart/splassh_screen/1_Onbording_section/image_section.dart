import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/splassh_screen/2_Onbording_section/Onboarding_2.dart';
import 'package:flutter/material.dart';

class image_section extends StatelessWidget {
  const image_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, right: 10, left: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21), color: Colors.cyan[50]),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 10),
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset("assert/photos/circle.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text(
                      "uickMart",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => page_2()));
                      },
                      child: Text(
                        "Skip for now",
                        style: TextStyle(color: Colors.cyan),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 300,
                  width: 300,
                  child: Image.asset("assert/photos/buy.png")),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
