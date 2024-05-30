import 'package:first_ecommrce_app/widget/Home/Bottom_bar.dart';
import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/Electronic.dart';
import 'package:first_ecommrce_app/widget/Home/categories/all_blank_page.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final List<String> imagePathscategory = [
    'assert/photos/mobile 2.png',
    'assert/photos/bag 2.png',
    'assert/photos/sofa.png',
    'assert/photos/car 2.png',
    'assert/photos/gift.png',
    'assert/photos/tv.png',
    'assert/photos/dr.png',
    'assert/photos/home 2.png',
    'assert/photos/fob.png',
    'assert/photos/electric.png',
  ];

  final List<String> textsaroj = [
    "Electronic",
    "Fashion",
    "Furniture",
    "Indstrial",
    "Home Decor",
    "Electronic",
    "Health",
    "Construction & Real State",
    "Fabrication Service",
    "Electrical Equipment"
  ];

  Categories({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BottomBarScreen()));
          },
        ),
        titleSpacing: 1,
        title: Text(
          "Categories",
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: imagePathscategory.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 120,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigate to different pages based on index or other conditions
                switch (index) {
                  case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FashionPage()),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FashionPage()),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Furniture()),
                    );
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Industrial()),
                    );
                    break;
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home_decore()),
                    );
                    break;
                  case 5:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sub_Categories()),
                    );
                    break;
                  case 6:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Health()),
                    );
                    break;
                  case 7:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Cons_Real_State()),
                    );
                    break;
                  case 8:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Fabrication()),
                    );
                    break;
                  case 9:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Electrical_Equipment()),
                    );
                    break;

                  default:
                    break;
                }
              },
              child: Card(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      child: Image.asset(imagePathscategory[index]),
                    ),
                    Text(
                      textsaroj[index],
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
