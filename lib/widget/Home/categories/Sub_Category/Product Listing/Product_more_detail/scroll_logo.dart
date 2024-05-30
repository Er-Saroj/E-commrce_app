import 'package:first_ecommrce_app/widget/Home/home/Exclusive_section/scrool_image.dart';
import 'package:flutter/material.dart';

class heart_logo extends StatelessWidget {
  const heart_logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 20,
        top: 40,
        child: Image.asset(
          "assert/photos/heart.png",
          width: 35,
        ));
  }
}

class back_logo extends StatelessWidget {
  const back_logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 35,
        left: 20,
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(
            "assert/logo/back.png",
            width: 35,
          ),
        ));
  }
}

class slider_sector extends StatelessWidget {
  const slider_sector({
    super.key,
    required this.myslidindex,
  });

  final int myslidindex;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 82 * 3,
      // right: 50,
      right: 150,
      child: image_scroll_part(myslidindex: myslidindex),
    );
  }
}
