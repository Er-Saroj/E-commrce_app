import 'package:first_ecommrce_app/widget/Home/Bottom_bar.dart';
import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/Product%20Listing/Search_field/search_bar.dart';
import 'package:flutter/material.dart';

class Exclusive_sale extends StatelessWidget {
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.yellow,
    Colors.purple,
    Colors.brown,
    Colors.teal,
    Colors.indigo,
    Colors.pink,
  ];
  final List<String> imagePaths = [
    'assert/headphone/head1.png',
    'assert/headphone/head2.png',
    'assert/headphone/head3.png',
    'assert/headphone/head4.png',
    'assert/headphone/head5.png',
    'assert/headphone/head6.png',
  ];

  Exclusive_sale({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BottomBarScreen()));
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(
          "Exclusive Sale",
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          SizedBox(
              height: 30,
              width: 30,
              child: InkWell(
                  onTap: () {},
                  child: Image.asset("assert/photos/option.png"))),
          Padding(
            padding: const EdgeInsets.only(right: 12.0, left: 10),
            child: SizedBox(
                height: 30,
                width: 30,
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (contex) => SearchBar1()));
                    },
                    child: Image.asset("assert/photos/search.png"))),
          ),
        ],
      ),
      body: Expanded(
        child: GridView.builder(
            itemCount: imagePaths.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 70,
              crossAxisSpacing: 0,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                child: Wrap(
                  children: [
                    Container(
                      //height: 300,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Stack(
                              children: [
                                Image.asset(imagePaths[index]),
                                Positioned(
                                    right: 10,
                                    top: 10,
                                    child: SizedBox(
                                      height: 30,
                                      child: CircleAvatar(
                                          child: Image.asset(
                                              "assert/photos/heart.png")),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  for (int i = 0; i < 3; i++)
                                    Align(
                                      widthFactor: 0.75,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.cyan,
                                        radius: 16,
                                        child: CircleAvatar(
                                          backgroundColor: colors[
                                              (index * 3 + i) % colors.length],
                                          radius: 13,
                                        ),
                                      ),
                                    ),
                                  // Spacer(),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Text(
                                      "All 5 Colors",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                              Text("Nike air jordan retro fa... \$126.00 "),
                              Text(
                                "\$186.00",
                                style: TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
