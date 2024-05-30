import 'package:flutter/material.dart';

class Cnfm_pass_textfield extends StatelessWidget {
  const Cnfm_pass_textfield({
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
              border: Border.all(
                  color: Color.fromARGB(255, 231, 220, 220), width: 1)),
          child: TextField(
            controller: No1textediting,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
              hintText: "   Enter Your password",
              border: InputBorder.none,
            ),
          )),
    );
  }
}
