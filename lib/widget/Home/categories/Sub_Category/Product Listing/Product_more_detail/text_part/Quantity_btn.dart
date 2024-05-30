import 'package:flutter/material.dart';

class Quntity_btn extends StatefulWidget {
  Quntity_btn({
    super.key,
  });

  @override
  State<Quntity_btn> createState() => _Quntity_btnState();
}

class _Quntity_btnState extends State<Quntity_btn> {
  List<int> Saroj = [1];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: Container(
        width: 124,
        height: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(11)),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                int minus = Saroj.last;
                setState(() {
                  Saroj.remove(minus);
                });
              },
              icon: Image.asset("assert/logo/minus.png"),
            ),
            Text(
              Saroj.length.toString(),
              style: TextStyle(fontSize: 22),
            ),
            IconButton(
              onPressed: () {
                int last = Saroj.last;
                setState(() {
                  Saroj.add(last + 1);
                });
              },
              icon: Icon(
                Icons.add,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
