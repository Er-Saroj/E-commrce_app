import 'package:first_ecommrce_app/widget/model/profile-section.dart';
import 'package:flutter/material.dart';

class scrool_text extends StatelessWidget {
  const scrool_text({
    super.key,
    required this.myslidindex,
  });

  final int myslidindex;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15,
      left: 12,
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Stack(children: [
            Container(
              width: 250,
              height: 100,
              child: Positioned(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  // itemCount: imagelist.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: index == myslidindex
                            ? Container(
                                width: 250,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.black),
                                      child: Text(
                                        scrolltext[index],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Text(
                                      "On Headphones",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Exclusive Sales",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )
                            : null);
                  },
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
