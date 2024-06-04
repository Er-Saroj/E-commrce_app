import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/splassh_screen/1_Onbording_section/image_section.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/splassh_screen/2_Onbording_section/image_section2.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/splassh_screen/3_Onbording_section/Onboarding_3.dart';
import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/splassh_screen/2_Onbording_section/Onboarding_2.dart';
import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _goToNextPage() {
    int nextPage = (_currentPage + 1) %
        3; // Wrap around to the first page after the last one
    _controller.animateToPage(
      nextPage,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    setState(() {
      _currentPage = nextPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 770,
            width: MediaQuery.of(context).size.width,
            child: PageView(
              controller: _controller,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const image_section(),
                    SizedBox(
                      width: 350,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Explore a wide range of products",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 27),
                          ),
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              "Explore a wide range of products at your fingertips. QuickMart offers an extensive collection to suit your needs",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11)),
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: _goToNextPage,
                                style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStateProperty.all(Colors.black),
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(11),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "Next",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image_section2(),
                    SizedBox(
                      width: 350,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Unlock exclusive offers and discounts",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 27),
                          ),
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              "Get access to limited-time deals and special promotions available only to our valued customers.",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: _goToNextPage,
                                style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStateProperty.all(Colors.black),
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(11),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "Next",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Onboarding_3(),
              ],
            ),
          ),
          _buildDotsIndicator(),
        ],
      ),
    );
  }

  Widget _buildDotsIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 3; i++)
          GestureDetector(
            onTap: () {
              _controller.animateToPage(
                i,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
              setState(() {
                _currentPage = i;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == i ? Colors.green : Colors.grey,
                ),
              ),
            ),
          ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
