import 'package:flutter/material.dart';

class LatestProductText extends StatelessWidget {
  const LatestProductText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Row(
        children: [
          Text(
            "Latest Products",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          TextButton(
              onPressed: () {},
              child: Text(
                "SEE All",
                style: TextStyle(color: Colors.cyan),
              ))
        ],
      ),
    );
  }
}
