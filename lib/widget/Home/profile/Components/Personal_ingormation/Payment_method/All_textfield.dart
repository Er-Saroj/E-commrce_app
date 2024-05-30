import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Card_number extends StatelessWidget {
  var CardnumberController = TextEditingController();
  Card_number({
    super.key,
    required this.Namecontloller,
  });

  final TextEditingController Namecontloller;

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
            keyboardType: TextInputType.number,
            maxLength: 16,
            controller: CardnumberController,
            decoration: InputDecoration(
              hintText: "   4111 1111 1111 1111",
              contentPadding: EdgeInsets.only(left: 15),
              hintStyle: TextStyle(color: Colors.black12),
              border: InputBorder.none,
            ),
          )),
    );
  }
}

// ignore: must_be_immutable
class Card_details extends StatelessWidget {
  Card_details({
    super.key,
    required this.Namecontloller,
  });
  var CarddatenumberController = TextEditingController();
  var CardcvvnumberController = TextEditingController();
  final TextEditingController Namecontloller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 60,
                width: 175,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(color: Colors.cyan, width: 1)),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: CarddatenumberController,
                  decoration: InputDecoration(
                    hintText: "   MM/YY",
                    contentPadding: EdgeInsets.only(left: 15),
                    hintStyle: TextStyle(color: Colors.black12),
                    border: InputBorder.none,
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 60,
                width: 175,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(color: Colors.cyan, width: 1)),
                child: TextField(
                  keyboardType: TextInputType.number,
                  maxLength: 3,
                  controller: CardcvvnumberController,
                  decoration: InputDecoration(
                    hintText: "   123",
                    contentPadding: EdgeInsets.only(left: 15),
                    hintStyle: TextStyle(color: Colors.black12),
                    border: InputBorder.none,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class Name_textfield extends StatelessWidget {
  const Name_textfield({
    super.key,
    required this.Namecontloller,
  });

  final TextEditingController Namecontloller;

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
            controller: Namecontloller,
            decoration: InputDecoration(
              hintText: "   Enter Card holder name",
              contentPadding: EdgeInsets.only(left: 15),
              hintStyle: TextStyle(color: Colors.black12),
              border: InputBorder.none,
            ),
          )),
    );
  }
}
