// ignore_for_file: must_be_immutable

import 'package:first_ecommrce_app/widget/Home/profile/Components/Personal_ingormation/Order_history/Completed_page.dart';
import 'package:first_ecommrce_app/widget/Home/profile/Components/Personal_ingormation/Order_history/Ongoing_page.dart';
import 'package:flutter/material.dart';

class Order_history extends StatelessWidget {
  Order_history({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              title: Text(
                'Order history',
                style: TextStyle(fontSize: 18),
              ),
              bottom: TabBar(
                  labelColor: Colors.white,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black,
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          //color: Colors.grey[300],
                        ),
                        child: Center(
                            child: Text(
                          'Ongoing',
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(shape: BoxShape.circle
                            //borderRadius: BorderRadius.circular(20),
                            // color: Colors.grey[300],
                            ),
                        child: Center(
                            child: Text('Completed',
                                style: TextStyle(fontSize: 18))),
                      ),
                    ),
                  ])),
          body: TabBarView(
            children: [Onging_page(), Completed_pege()],
          ),
        ));
  }
}
