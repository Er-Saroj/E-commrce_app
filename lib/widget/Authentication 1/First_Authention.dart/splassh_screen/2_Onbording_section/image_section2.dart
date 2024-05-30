import 'package:flutter/material.dart';

class Image_section2 extends StatelessWidget {
  const Image_section2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, right: 10, left: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21), color: Colors.cyan[50]),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      // Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => thirdpage()));
                      },
                      child: Text(
                        "Skip for now",
                        style: TextStyle(color: Colors.cyan),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 300,
                  width: 300,
                  child: Image.asset("assert/photos/voucher.png")),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
