import 'package:flutter/material.dart';

class CategoriesLabelText extends StatelessWidget {
  const CategoriesLabelText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Row(
        children: [
          Text(
            "Categories",
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
