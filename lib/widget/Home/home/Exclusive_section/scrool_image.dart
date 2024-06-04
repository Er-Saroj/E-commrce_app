import 'package:flutter/material.dart';

class image_scroll_part extends StatelessWidget {
  const image_scroll_part({
    super.key,
    required this.myslidindex,
  });

  final int myslidindex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        width: 80,
        height: 18,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == myslidindex ? Colors.cyan : Colors.grey,
                ),
                width: 15,
              ),
            );
          },
        ),
      ),
    );
  }
}
