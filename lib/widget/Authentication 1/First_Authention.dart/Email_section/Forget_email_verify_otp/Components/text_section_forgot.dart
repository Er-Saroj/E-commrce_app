import 'package:flutter/material.dart';

class text_section_forgot extends StatelessWidget {
  const text_section_forgot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Email verification',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Text(
          "Enter the 6-digit verification code send to your email address.",
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
