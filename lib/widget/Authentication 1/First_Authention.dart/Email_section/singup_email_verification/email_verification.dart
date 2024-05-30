// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, prefer_const_constructors_in_immutables

import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Email_section/singup_email_verification/Procces_btn.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPVerificationScreen extends StatefulWidget {
  final String toastMessage;

  OTPVerificationScreen({super.key, required this.toastMessage});
  @override
  _OTPVerificationScreenState createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // print("show message ${widget.toastMessage}");
      Fluttertoast.showToast(
        msg: widget.toastMessage,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 10,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0,
      );
    });
  }

  TextEditingController otpController = TextEditingController();
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 3,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(
          'Verification Code',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Email verification',

                  // textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              "Enter the 6-digit verification code send to your email address.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),
            Pincode_field(context),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Resend Code",
                  style: TextStyle(color: Colors.cyan),
                )),
            Procces_btn(),
          ],
        ),
      ),
    );
  }

  PinCodeTextField Pincode_field(BuildContext context) {
    return PinCodeTextField(
      keyboardType: TextInputType.numberWithOptions(),
      appContext: context,
      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderWidth: 1,
        // borderRadius: BorderRadius.circular(
        //   25,
        // ),
        fieldHeight: 50,
        fieldWidth: 50,
        inactiveColor: Colors.grey[50],
        activeColor: Colors.cyan,
        selectedColor: Colors.grey[50],
        borderRadius: BorderRadius.circular(15),

        activeFillColor: Colors.white,
      ),
      animationDuration: Duration(milliseconds: 300),
      //backgroundColor: Colors.blue.shade50,
      //45enableActiveFill: true,
      controller: otpController,
      onCompleted: (v) {
        print("Completed: $v");
      },
      onChanged: (value) {
        print(value);
        setState(() {
          currentText = value;
        });
      },
      beforeTextPaste: (text) {
        // Allow pasting text
        return true;
      },
    );
  }

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }
}
