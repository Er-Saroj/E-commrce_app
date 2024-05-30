// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:first_ecommrce_app/widget/Home/home/Components/categorie_label.dart';
import 'package:first_ecommrce_app/widget/Home/home/Components/categories_label_text.dart';
import 'package:first_ecommrce_app/widget/Home/home/Components/latesst_produst/latest_product_card.dart';
import 'package:first_ecommrce_app/widget/Home/home/Components/latesst_produst/latest_product_text.dart';
import 'package:first_ecommrce_app/widget/Home/home/Exclusive_section/scrool_page.dart';
import 'package:flutter/material.dart';

class Homepage1 extends StatefulWidget {
  const Homepage1({super.key});

  @override
  State<Homepage1> createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Image.asset("assert/photos/circle.png"),
        ),
        leadingWidth: 50,
        title: Text("uickMart"),
        titleSpacing: 0,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
        actions: [
          Icon(
            Icons.search,
            size: 39,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 8),
            child: SizedBox(
              height: 55,
              width: 45,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    "https://media.istockphoto.com/id/1319085053/photo/good-looking-blonde-woman-having-tea-and-looking-balanced.jpg?s=1024x1024&w=is&k=20&c=sXczI7XB5sJUEZoQIhvJ6cyC8m4C0s38jw3KI1UkeAc="),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Scroll_image(),
          CategoriesLabelText(),
          CategorieLabel(),
          LatestProductText(),
          LatestProductCard()
        ],
      ),
    );
  }
}
