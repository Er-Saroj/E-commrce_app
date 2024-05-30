import 'package:flutter/material.dart';

class Sing_google_btn extends StatelessWidget {
  const Sing_google_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        height: 55,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                //  backgroundColor: MaterialStatePropertyAll(),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11),
            ))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Signup with Google"),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.g_mobiledata_sharp,
                      color: Colors.cyan,
                      size: 32,
                    ))
              ],
            )),
      ),
    );
  }
}
