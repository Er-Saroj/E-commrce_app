import 'package:first_ecommrce_app/widget/Authentication%201/First_Authention.dart/Singup_page/name_section.dart';
import 'package:first_ecommrce_app/widget/Home/profile/profile.dart';
import 'package:flutter/material.dart';

class Shopping_Address extends StatefulWidget {
  Shopping_Address({super.key, required bool isSwitched});

  @override
  State<Shopping_Address> createState() => _Shopping_AddressState();
}

class _Shopping_AddressState extends State<Shopping_Address> {
  var NameController = TextEditingController();
  var PhonenoController = TextEditingController();
  var ProvinceController = TextEditingController();
  var CityController = TextEditingController();
  var StreetController = TextEditingController();
  var PostalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -5,
        title: Text("Shopping Address"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Full_name(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(color: Colors.black12)),
                  child: TextField(
                    controller: NameController,
                    decoration: InputDecoration(
                      hintText: "  Enter your Name",
                      contentPadding: EdgeInsets.only(left: 15),
                      hintStyle: TextStyle(color: Colors.black26),
                      border: InputBorder.none,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 18),
              child: Row(
                children: [
                  Text("Phone Number"),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 8,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(color: Colors.black12)),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    controller: PhonenoController,
                    decoration: InputDecoration(
                      hintText: "  +91",
                      contentPadding: EdgeInsets.only(left: 15),
                      hintStyle: TextStyle(color: Colors.black26),
                      border: InputBorder.none,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(color: Colors.black12)),
                  child: TextField(
                    controller: ProvinceController,
                    decoration: InputDecoration(
                      hintText: "  Select Province",
                      contentPadding: EdgeInsets.only(left: 15),
                      hintStyle: TextStyle(color: Colors.black26),
                      border: InputBorder.none,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(color: Colors.black12)),
                  child: TextField(
                    controller: CityController,
                    decoration: InputDecoration(
                      hintText: "   Select City",
                      contentPadding: EdgeInsets.only(left: 15),
                      hintStyle: TextStyle(color: Colors.black26),
                      border: InputBorder.none,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 18),
              child: Row(
                children: [
                  Text("Street Address"),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 8,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(color: Colors.black12)),
                  child: TextField(
                    controller: StreetController,
                    decoration: InputDecoration(
                      hintText: "  Enter Street address",
                      contentPadding: EdgeInsets.only(left: 15),
                      hintStyle: TextStyle(color: Colors.black26),
                      border: InputBorder.none,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 18),
              child: Row(
                children: [
                  Text("Postal Code"),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 8,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(color: Colors.black12)),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: PostalController,
                    decoration: InputDecoration(
                      hintText: "  Enter Postar Code",
                      contentPadding: EdgeInsets.only(left: 15),
                      hintStyle: TextStyle(color: Colors.black26),
                      border: InputBorder.none,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 60,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(11)),
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.black),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ))),
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
