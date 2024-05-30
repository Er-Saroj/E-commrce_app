import 'package:flutter/material.dart';

class price_text extends StatelessWidget {
  const price_text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 80,
        child: RichText(
            text: TextSpan(children: [
          TextSpan(
            text: "\$ 15.25",
            style: TextStyle(
                color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),
          ),
          TextSpan(
              text: "   \$20.00",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 21,
                  fontWeight: FontWeight.bold))
        ])));
  }
}
