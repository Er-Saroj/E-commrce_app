// ignore_for_file: prefer_const_constructors

import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/Product%20Listing/Product_more_detail/text_part/Text_detail_product.dart';
import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/Product%20Listing/Product_more_detail/scroll_logo.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';

class Product_details extends StatefulWidget {
  const Product_details({super.key});

  @override
  State<Product_details> createState() => _Product_detailsState();
}

class _Product_detailsState extends State<Product_details> {
  List<String> imagelist = [
    //   "https://plus.unsplash.com/premium_photo-1661512088611-ead5d38a773a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    //   "https://images.unsplash.com/photo-1573167507387-6b4b98cb7c13?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    //   "https://images.unsplash.com/photo-1552581234-26160f608093?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    //  // "https://images.unsplash.com/photo-1568992688065-536aad8a12f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ];
  int myslidindex = 0;

  shareimage() async {
    // ignore: unused_local_variable
    XFile? Image = await ImagePicker().pickImage(source: ImageSource.camera);
    // ignore: unnecessary_null_comparison
    if (imagelist == null) return;
    var image;
    Share.shareXFiles([image], text: "successfully sended");
  }

  @override
  Widget build(BuildContext context) {
    return // Divider();

        Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 300,
                    child: PageView.builder(
                      itemCount: 5,
                      // itemCount: imagelist.length,
                      onPageChanged: (value) {
                        setState(() {
                          myslidindex = value;
                        });
                      },
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Exclusive_sale()));
                          },
                          child: Image.asset(
                            "assert/logo/bigwatch.png",
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          text_section_product(),
          heart_logo(),
          back_logo(),
          slider_sector(myslidindex: myslidindex),
        ],
      )),
    );
  }
}
