import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/login_page/Login.dart';
import 'package:flutter/material.dart';

class Name_profile extends StatelessWidget {
  const Name_profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
            height: 70,
            child: Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                        "https://newprofilepic.com/assets/images/article/35_img.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Saroj Singh",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Sarojsingh7488821@gmail.com",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Image.asset(
                    "assert/logo/logout.png",
                    width: 35,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
