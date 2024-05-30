import 'package:flutter/material.dart';

class Text_and_btn extends StatelessWidget {
  const Text_and_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Order Info",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "Subtotal",
                style: TextStyle(fontSize: 12, color: Colors.black45),
              ),
              Spacer(),
              Text(
                "\$ 27.25",
                style: TextStyle(fontSize: 12, color: Colors.black45),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "Shipping Cost",
                style: TextStyle(fontSize: 12, color: Colors.black45),
              ),
              Spacer(),
              Text(
                "\$ 0.00",
                style: TextStyle(fontSize: 12, color: Colors.black45),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "Total",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Text(
                "\$ 27.25",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(11)),
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ))),
                child: Text(
                  "Checkout (2)",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ),
      ],
    );
  }
}
