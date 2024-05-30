import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/Product%20Listing/Product_more_detail/text_part/Quantity_btn.dart';
import 'package:flutter/material.dart';

class Completed_pege extends StatelessWidget {
  const Completed_pege({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) => Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: SizedBox(
                        height: 30,
                        // width: 115,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.blue[900]),
                                shape: WidgetStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(11),
                                ))),
                            onPressed: () {},
                            child: Text(
                              "Finished",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    Text(
                      "7 July 2023",
                      style: TextStyle(color: Colors.black45),
                    )
                  ],
                ),
              ),
              Row(
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
                          padding: const EdgeInsets.only(
                              left: 8.0, top: 16, right: 16),
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
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 11),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
