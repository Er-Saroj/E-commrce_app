import 'package:first_ecommrce_app/widget/model/profile-section.dart';
import 'package:flutter/material.dart';

class scrool_text extends StatelessWidget {
  const scrool_text({
    Key? key,
    required this.myslidindex,
  }) : super(key: key);

  final int myslidindex;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15,
      left: 12,
      child: SizedBox(
        width: 250,
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: index == myslidindex
                  ? Container(
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black,
                            ),
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
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  : SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
