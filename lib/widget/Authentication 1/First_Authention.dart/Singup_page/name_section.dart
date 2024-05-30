import 'package:flutter/material.dart';

class Full_name extends StatefulWidget {
  Full_name({
    super.key,
  });

  @override
  State<Full_name> createState() => _Full_nameState();
}

class _Full_nameState extends State<Full_name> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 18),
      child: Row(
        children: [
          Text("Full Name"),
          Icon(
            Icons.star,
            color: Colors.red,
            size: 8,
          ),
        ],
      ),
    );
  }
}

class NameTextField extends StatelessWidget {
  NameTextField({
    super.key,
    required this.no1textediting,
    TextEditingController? No1textediting,
  });

  final TextEditingController no1textediting;

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
          controller: no1textediting,
          decoration: InputDecoration(
            hintText: "   Saroj Singh",
            contentPadding: EdgeInsets.only(left: 15),
            border: InputBorder.none,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your full name';
            }
            return null;
          },
        ),
      ),
    );
  }
}
