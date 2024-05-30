import 'package:flutter/material.dart';

class password_new_textfield extends StatelessWidget {
  const password_new_textfield({
    super.key,
    required this.No2textediting,
  });

  final TextEditingController No2textediting;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              border: Border.all(
                  color: Color.fromARGB(255, 231, 220, 220), width: 1)),
          child: TextField(
            controller: No2textediting,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
              hintText: "   Enter Your password",
              border: InputBorder.none,
            ),
          )),
    );
  }
}
