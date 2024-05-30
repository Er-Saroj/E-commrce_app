import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/splassh_screen/2_Onbording_section/Onboarding_2.dart';
import 'package:flutter/material.dart';

class text_section extends StatelessWidget {
  const text_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Explore a wide range of products",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Explore a wide range of products at your fingertips. QuickMart offers an extensive collection to suit your needs",
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              height: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(11)),
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.black),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ))),
                  child: Text(
                    "Next",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
