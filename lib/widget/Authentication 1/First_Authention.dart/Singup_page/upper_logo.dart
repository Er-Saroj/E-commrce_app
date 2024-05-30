import 'package:flutter/material.dart';

class logo_part extends StatelessWidget {
  const logo_part({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 12),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10),
          child: SizedBox(
            height: 45,
            width: 45,
            child: Image.asset("assert/photos/circle.png"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            "uickMart",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ]),
    );
  }
}
