import 'package:flutter/material.dart';

class Personal_info_text extends StatelessWidget {
  const Personal_info_text({
    super.key,
    required bool isSwitched,
  }) : _isSwitched = isSwitched;

  final bool _isSwitched;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 14),
      child: Text(
        "Personal Information",
        style: TextStyle(
          color: _isSwitched ? Colors.white : Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class support_info_text extends StatelessWidget {
  const support_info_text({
    super.key,
    required bool isSwitched,
  }) : _isSwitched = isSwitched;

  final bool _isSwitched;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 14.0,
        top: 20,
      ),
      child: Text(
        "Support & Information",
        style: TextStyle(
          color: _isSwitched ? Colors.white : Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class Account_manage extends StatelessWidget {
  const Account_manage({
    super.key,
    required bool isSwitched,
  }) : _isSwitched = isSwitched;
  final bool _isSwitched;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: Text(
        "Account Management",
        style: TextStyle(
          color: _isSwitched ? Colors.white : Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
