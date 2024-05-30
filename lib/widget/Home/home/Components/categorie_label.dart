import 'package:flutter/material.dart';

class CategorieLabel extends StatelessWidget {
  const CategorieLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: GridView.count(
        crossAxisCount: 4,
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(
                    height: 25,
                    width: 25,
                    child: Image.asset("assert/photos/mobile.png")),
                Text(
                  "Electronics",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                SizedBox(
                    height: 25,
                    width: 25,
                    child: Image.asset("assert/photos/bag.png")),
                Text(
                  "Fashion",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                SizedBox(
                    height: 25,
                    width: 25,
                    child: Image.asset("assert/photos/furnicher.png")),
                Text(
                  "Furniture",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                SizedBox(
                    height: 25,
                    width: 25,
                    child: Image.asset("assert/photos/car.png")),
                Text(
                  "Iindustrial",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
