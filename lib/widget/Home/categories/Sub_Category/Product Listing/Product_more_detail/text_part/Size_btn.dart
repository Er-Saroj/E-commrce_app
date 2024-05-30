import 'package:flutter/material.dart';

class BulletButtonExample extends StatefulWidget {
  @override
  _BulletButtonExampleState createState() => _BulletButtonExampleState();
}

class _BulletButtonExampleState extends State<BulletButtonExample> {
  String selectedSize = '';

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BulletButton(
          text: "Xs",
          isSelected: selectedSize == "Xs",
          onPressed: () {
            setState(() {
              selectedSize = "Xs";
            });
          },
        ),
        BulletButton(
          text: "S",
          isSelected: selectedSize == "S",
          onPressed: () {
            setState(() {
              selectedSize = "S";
            });
          },
        ),
        BulletButton(
          text: "M",
          isSelected: selectedSize == "M",
          onPressed: () {
            setState(() {
              selectedSize = "M";
            });
          },
        ),
        BulletButton(
          text: "L",
          isSelected: selectedSize == "L",
          onPressed: () {
            setState(() {
              selectedSize = "L";
            });
          },
        ),
        BulletButton(
          text: "XL",
          isSelected: selectedSize == "XL",
          onPressed: () {
            setState(() {
              selectedSize = "XL";
            });
          },
        ),
      ],
    );
  }
}

class BulletButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const BulletButton({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CircleAvatar(
        backgroundColor: isSelected ? Colors.black : Colors.transparent,
        child: Text(
          text,
          style: TextStyle(color: isSelected ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
