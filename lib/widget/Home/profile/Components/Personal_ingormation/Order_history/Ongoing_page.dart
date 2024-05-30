import 'package:first_ecommrce_app/widget/Home/profile/Components/Personal_ingormation/Order_history/Explore_time.dart';
import 'package:flutter/material.dart';

class Onging_page extends StatelessWidget {
  const Onging_page({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assert/profile-logo/ongoing.png",
              width: 280,
              height: 280,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "No ongoing order",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "We currently don't have any active orders in progress. Feel free to explore our products and place a new order",
              style: TextStyle(fontSize: 16, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 65,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(21)),
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ExploreTime()));
                  },
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.black),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ))),
                  child: Text(
                    "Explore Categories",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
