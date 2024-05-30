import 'package:flutter/material.dart';

class PassName extends StatelessWidget {
  const PassName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Row(
        children: [
          Text("Password"),
          Icon(
            Icons.star,
            color: Colors.red,
            size: 8,
          )
        ],
      ),
    );
  }
}

class PassTextField extends StatefulWidget {
  const PassTextField({
    Key? key,
    required this.no3TextEditing,
    required TextEditingController No3textediting,
  }) : super(key: key);

  final TextEditingController? no3TextEditing;

  @override
  _PassTextFieldState createState() => _PassTextFieldState();
}

class _PassTextFieldState extends State<PassTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          border: Border.all(color: Colors.cyan, width: 1),
        ),
        child: TextFormField(
          controller: widget.no3TextEditing,
          obscureText: _obscureText,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Password is required';
            }

            RegExp regex = RegExp(
                r'^(?=.*?[a-zA-Z])(?=.*?[0-9])(?=.*?[!@#$%^&*()_+{}|:<>?]).{4,}$');
            if (!regex.hasMatch(value)) {
              return 'Min 4 (1 letter, 1 number,& 1 special character requred)';
            }
            return null;
          },
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Enter Your Password",
            contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            suffixIcon: IconButton(
              icon: Icon(_obscureText
                  ? Icons.remove_red_eye_outlined
                  : Icons.visibility_off_outlined),
              color: Colors.black,
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
