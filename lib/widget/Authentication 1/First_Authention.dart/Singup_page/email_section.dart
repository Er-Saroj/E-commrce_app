import 'package:flutter/material.dart';

class EmailSection extends StatelessWidget {
  const EmailSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Row(
        children: [
          Text("Email"),
          Icon(
            Icons.star,
            color: Colors.red,
            size: 8,
          )
        ],
      ),
    );
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
    required this.no2textediting,
    TextEditingController? No2textediting,
  });

  final TextEditingController no2textediting;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          border: Border.all(color: Colors.cyan, width: 1),
        ),
        child: TextFormField(
          controller: no2textediting,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "   Sarojsingh@gmail.com",
            contentPadding: EdgeInsets.only(left: 15),
            border: InputBorder.none,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter an email';
            }
            // Regular expression for validating an Email
            String pattern = r'^[^@]+@[^@]+\.[^@]+';
            RegExp regex = RegExp(pattern);
            if (!regex.hasMatch(value)) {
              return 'Enter a valid email address';
            }
            return null;
          },
        ),
      ),
    );
  }
}
