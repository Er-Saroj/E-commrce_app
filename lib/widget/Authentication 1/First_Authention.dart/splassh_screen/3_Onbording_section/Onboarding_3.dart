// ignore_for_file: prefer_const_constructors

import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/splassh_screen/3_Onbording_section/image_section3.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/splassh_screen/3_Onbording_section/login_sing_btn.dart';
import 'package:flutter/material.dart';

class Onboarding_3 extends StatelessWidget {
  const Onboarding_3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Image_secrion3(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0, left: 12),
                        child: Text(
                          "Unlock exclusive offers and discounts",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Get access to limited-time deals and special promotions available only to our valued customers.",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Button_section3(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
