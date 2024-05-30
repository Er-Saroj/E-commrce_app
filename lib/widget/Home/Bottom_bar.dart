// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:first_ecommrce_app/widget/model/showable_bottom_bar.dart';
import 'package:first_ecommrce_app/widget/Home/home/home.dart';
import 'package:first_ecommrce_app/widget/Home/categories/categories.dart';
import 'package:first_ecommrce_app/widget/Home/my_cart/my_cart.dart';
import 'package:first_ecommrce_app/widget/Home/profile/profile.dart';
import 'package:first_ecommrce_app/widget/Home/wishlist/wishlist.dart';
import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List<Widget> ScreenList = [
    Homepage1(),
    Categories(),
    MyCart(),
    Wishlist(),
    Profile(),
  ];
  List<BottomNavigationBarItem> bottomBar = [
    BottomNavigationBarItem(
      label: 'Home',
      icon: Image.asset(
        "assert/logo/home.png",
        height: 25,
        color: Colors.cyan,
      ),
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        "assert/logo/Categary.png",
        height: 30,
      ),
      label: "Categary",
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        "assert/logo/cart.png",
        height: 30,
      ),
      label: "My Cart",
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        "assert/logo/heart.png",
        height: 30,
      ),
      label: "Whishlist",
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        "assert/logo/person.png",
        height: 30,
      ),
      label: "Profile",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MyButtombar(
      bottomNavigationBarItems: bottomBar,
      pages: ScreenList,
      height: 65,
    );
  }
}
