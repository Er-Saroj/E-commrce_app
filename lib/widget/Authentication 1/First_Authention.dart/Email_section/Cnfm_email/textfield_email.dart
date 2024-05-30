import 'package:flutter/material.dart';

class Email_textfield_forgot extends StatelessWidget {
  const Email_textfield_forgot({
    super.key,
    required this.No1textediting,
  });

  final TextEditingController No1textediting;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              border: Border.all(color: Colors.cyan, width: 1)),
          child: TextField(
            controller: No1textediting,
            decoration: InputDecoration(
              hintText: "   ahmedraza@gmail.com",
              border: InputBorder.none,
            ),
          )),
    );
  }
}
