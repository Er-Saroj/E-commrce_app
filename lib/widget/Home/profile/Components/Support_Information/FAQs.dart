import 'package:flutter/material.dart';

class FAQa extends StatelessWidget {
  const FAQa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(
          "FAQa",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Can I Cancle my order",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: 300,
                child: Text(
                  "Yes only if the order is not dispatched yet. You can contact our customer service department to get your order canceled.",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 310,
                child: Text(
                  "Will I recive the same product i see in the photo?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: 300,
                child: Text(
                    " Actual product color may vary from the images shown. Every monitor or mobile display has a different capability to display colors, and every individual may see these colors differently. In addition, lighting conditions at the time the photo was taken can also affect an image's color.",
                    style: TextStyle(color: Colors.black54)),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "How can I recover the forgotten password?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                  width: 300,
                  child: Text(
                      "If you have forgotten your password, you can recover it from Login - Forgotten your password? section. You will receive an e-mail with a link to enter and confirm your new password.",
                      style: TextStyle(color: Colors.black54))),
              SizedBox(
                height: 10,
              ),
              Text(
                "Is my personal information confidential?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                  width: 320,
                  child: Text(
                      " Your personal information is confidential. We do not rent, sell, barter or trade email addresses. When you place an order with us, we collect your name, address, telephone number, credit card information and your email address. We use this information to fulfill your order and to communicate with you about your order. All your information is kept confidential and will not be disclosed to anybody unless ordered by government authorities.",
                      style: TextStyle(color: Colors.black54))),
              SizedBox(
                height: 10,
              ),
              Text(
                "What payment methods can I use to make purchases?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                  width: 310,
                  child: Text(
                      "We offer the following payment methods: PayPal, VISA, MasterCard and Voucher code, if applicable.",
                      style: TextStyle(color: Colors.black54))),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "For any query, you can visit our website for ",
                          style: TextStyle(color: Colors.black, fontSize: 13)),
                      TextSpan(
                          text: "Help Center ",
                          style: TextStyle(color: Colors.blue, fontSize: 13)),
                      TextSpan(
                          text: "at Quickmart.com ",
                          style: TextStyle(color: Colors.black, fontSize: 13)),
                    ])),
              )
            ])),
      ),
    );
  }
}
