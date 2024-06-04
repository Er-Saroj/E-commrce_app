import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/Product%20Listing/Product_more_detail/text_part/Quantity_btn.dart';
import 'package:first_ecommrce_app/widget/Home/my_cart/Voucher_popup.dart';
import 'package:first_ecommrce_app/widget/Home/my_cart/text_checkout_btn.dart';
import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Voucher_popup();
      },
    );
  }

  bool _isChecked1 = false;
  bool _isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: Image.asset(
              "assert/logo/back.png",
              width: 10,
            ),
          ),
        ),
        title: Text("My Cart"),
        actions: [
          TextButton(
            onPressed: () {
              _openBottomSheet(context);
            },
            child: Text(
              "Voucher Code",
              style: TextStyle(color: Colors.cyan, fontSize: 18),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) => Container(
                height: 140,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assert/photos/watch1.png",
                        height: 120,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 160,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 16, right: 16),
                            child: Text(
                              "Loop Silicone Strong Magnetic Watch",
                              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 4, bottom: 4),
                          child: SizedBox(
                            width: 52,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "\$15.25",
                                    style: TextStyle(color: Colors.black, fontSize: 11),
                                  ),
                                  TextSpan(
                                    text: " \$20.00",
                                    style: TextStyle(color: Colors.black54, fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          child: Quntity_btn(),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Checkbox(
                          value: index == 0 ? _isChecked1 : _isChecked2,
                          checkColor: Colors.white,
                          activeColor: Colors.cyan,
                          onChanged: (bool? value) {
                            setState(() {
                              if (index == 0) {
                                _isChecked1 = value!;
                              } else {
                                _isChecked2 = value!;
                              }
                            });
                          },
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assert/logo/dlt.png",
                            width: 25,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120.0),
            child: Text_and_btn(),
          ),
        ],
      ),
    );
  }
}
