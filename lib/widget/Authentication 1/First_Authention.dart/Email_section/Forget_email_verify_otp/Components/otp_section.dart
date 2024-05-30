import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

abstract class PinCodeFieldUtil {
  static PinCodeTextField createPinCodeTextField(
    BuildContext context,
    TextEditingController controller,
    Function(String) onCompleted, {
    required int length,
  }) {
    return PinCodeTextField(
      keyboardType: TextInputType.numberWithOptions(),
      appContext: context,
      length: length,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderWidth: 1,
        fieldHeight: 50,
        fieldWidth: 50,
        inactiveColor: Colors.grey[50],
        activeColor: Colors.cyan,
        selectedColor: Colors.grey[50],
        borderRadius: BorderRadius.circular(15),
        activeFillColor: Colors.white,
      ),
      animationDuration: Duration(milliseconds: 300),
      controller: controller,
      onCompleted: onCompleted,
      onChanged: (value) {
        print(value);
      },
      beforeTextPaste: (text) {
        // Allow pasting text
        return true;
      },
    );
  }
}
