import 'package:flutter/material.dart';

class Buy_btn extends StatelessWidget {
  const Buy_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: SizedBox(
            height: 60,
            // width: 115,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ))),
                onPressed: () {},
                child: Text(
                  "        Buy Now        ",
                  style: TextStyle(color: Colors.black),
                )),
          ),
        ),
        SizedBox(
          height: 60,
          //width: 125,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ))),
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    "    Add To Cart     ",
                    style: TextStyle(color: Colors.white),
                  ),
                  Image.asset(
                    "assert/logo/cart.png",
                    color: Colors.white,
                    width: 30,
                  )
                ],
              )),
        ),
      ],
    );
  }
}
