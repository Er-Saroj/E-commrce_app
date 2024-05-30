import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/Product%20Listing/Product_more_detail/Buy_btn.dart';
import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/Product%20Listing/Product_more_detail/text_part/Quantity_btn.dart';
import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/Product%20Listing/Product_more_detail/text_part/Size_btn.dart';
import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/Product%20Listing/Product_more_detail/text_part/price_text.dart';
import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/Product%20Listing/Product_more_detail/text_part/text_more_read.dart';
import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/Product%20Listing/Product_more_detail/text_part/top_free_btn.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class text_section_product extends StatelessWidget {
  final List<Color> colors = [
    Colors.black,
    Colors.grey,
    Colors.purple,
    Colors.blue,
    Colors.grey
  ];

  text_section_product({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 280.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(25),
              right: Radius.circular(25),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Top_free_btn(),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 250,
                        child: Text(
                          "Loop Silicone Strong Magnetic watch",
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      price_text(),
                    ],
                  ),
                ),
                Row(
                  children: [
                    for (int i = 0; i < 5; i++)
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                    Text("  4.5 (2,495 reviews)")
                  ],
                ),
                More_read_text(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Color",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                Row(
                  children: [
                    for (int i = 0; i < colors.length; i++)
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 14,
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: colors[i],
                          ),
                        ),
                      ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Size",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                BulletButtonExample(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Quantity",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                Quntity_btn(),
                Buy_btn(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
