import 'package:first_ecommrce_app/widget/Home/profile/Components/Personal_ingormation/Payment_method/All_textfield.dart';
import 'package:first_ecommrce_app/widget/Home/profile/Components/Personal_ingormation/Payment_method/Save_btn_pay.dart';
import 'package:first_ecommrce_app/widget/Home/profile/Components/Personal_ingormation/Payment_method/top_two_btn.dart';
import 'package:first_ecommrce_app/widget/Home/profile/profile.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Payment_method extends StatelessWidget {
  var Namecontloller = TextEditingController();
  Payment_method({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          title: Text(
            "Payment Method",
            style: TextStyle(fontSize: 18),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Top_two_btn(),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 20),
                child: Row(
                  children: [
                    Text("Card Holder Name"),
                    Icon(
                      Icons.star,
                      color: Colors.red,
                      size: 8,
                    )
                  ],
                ),
              ),
              Name_textfield(Namecontloller: Namecontloller),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 20),
                child: Row(
                  children: [
                    Text("Card Number"),
                    Icon(
                      Icons.star,
                      color: Colors.red,
                      size: 8,
                    )
                  ],
                ),
              ),
              Card_number(Namecontloller: Namecontloller),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 20),
                    child: Row(
                      children: [
                        Text("Expiration"),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 8,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 20),
                    child: Row(
                      children: [
                        Text("CVV"),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 8,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Card_details(Namecontloller: Namecontloller),
              Elevated_save_btn(),
            ],
          ),
        ));
  }
}
