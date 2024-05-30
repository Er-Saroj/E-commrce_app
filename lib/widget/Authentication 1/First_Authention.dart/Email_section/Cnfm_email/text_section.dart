import 'package:flutter/material.dart';

class confm_email extends StatelessWidget {
  const confm_email({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, top: 35),
      child: Text(
        "Confirmation Email",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class enter_email extends StatelessWidget {
  const enter_email({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text("Enter your email address for verification"),
    );
  }
}
