import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/Product%20Listing/Product_more_detail/text_part/Quantity_btn.dart';
import 'package:first_ecommrce_app/widget/Home/wishlist/Delete_cnfm_popup.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Delete_Cnfm_popup();
      },
    );
  }

  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              "assert/logo/back.png",
              width: 10,
            ),
          ),
        ),
        title: Text("My Cart"),
      ),
      body: ListView.builder(
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
                      padding:
                          const EdgeInsets.only(left: 8.0, top: 16, right: 16),
                      child: Text(
                        "Loop Silicone Strong Magnetic Watch",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, top: 4, bottom: 4),
                    child: SizedBox(
                      width: 52,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "\$15.25",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 11),
                            ),
                            TextSpan(
                              text: " \$20.00",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    child: Quntity_btn(),
                  ),
                ],
              ),
              SizedBox(
                width: 25,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 95,
                  ),
                  InkWell(
                    onTap: () {
                      _openBottomSheet(context);
                    },
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
    );
  }
}
