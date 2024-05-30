import 'package:flutter/material.dart';

class LatestProductCard extends StatelessWidget {
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
    'assert/photos/shoes.png',
    'assert/photos/chasma.png',
    'assert/photos/headphones 2.png',
    'assert/photos/pearce.png',
  ];

  LatestProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          itemCount: imagePaths.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 80,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Wrap(
                children: [
                  Container(
                    height: 300,
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
                              //mainAxisAlignment: MainAxisAlignment.start,
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
    );
  }
}
