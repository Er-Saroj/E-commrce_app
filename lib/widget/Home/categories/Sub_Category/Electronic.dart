import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/Product%20Listing/Product_Listing.dart';
import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/sub_category_blank.dart';
import 'package:first_ecommrce_app/widget/Home/categories/categories.dart';
import 'package:flutter/material.dart';

class Sub_Categories extends StatelessWidget {
  final List<String> imagePathscategory = [
    'assert/photos/laptop.png',
    'assert/photos/mobile_blank.png',
    'assert/photos/head_phone.png',
    'assert/photos/watch.png',
    'assert/photos/cover.png',
    'assert/photos/desktop.png',
    'assert/photos/wire_lead.png',
    'assert/photos/charger.png',
  ];

  final List<String> textsaroj = [
    "Laptops",
    "Mobile phones",
    "Headphones",
    "Smart Watches",
    "Mobile Cases",
    "Monitirs",
    "Head Phones",
    "Charger",
  ];
  Sub_Categories({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Categories()));
          },
        ),
        titleSpacing: 1,
        title: Text(
          "Electronics",
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: imagePathscategory.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 180,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                switch (index) {
                  case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Laptop()),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Mobile_phones()),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Headphones()),
                    );
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Product_List()),
                    );
                    break;
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Mobile_Cases()),
                    );
                    break;
                  case 5:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Monitors()),
                    );
                    break;
                  case 6:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Wire_headphone()),
                    );
                    break;
                  case 7:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => charger()),
                    );
                    break;

                  default:
                    break;
                }
              },
              child: Column(
                children: [
                  Card(
                    color: Colors.white,
                    child: SizedBox(
                      height: 140,
                      child: Image.asset(imagePathscategory[index]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Text(
                          textsaroj[index],
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
