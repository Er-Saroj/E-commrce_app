import 'package:flutter/material.dart';

class ChooseOptionBottomSheet extends StatefulWidget {
  @override
  _ChooseOptionBottomSheetState createState() =>
      _ChooseOptionBottomSheetState();
}

class _ChooseOptionBottomSheetState extends State<ChooseOptionBottomSheet> {
  List<String> options = [
    "Price (Low to High)",
    "Price (High to low)",
    "A-Z",
    "Z-A",
  ];
  List<bool> checked = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 380,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text(
                  'Filter',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: options.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: SizedBox(
                    height: 25,
                    child: Checkbox(
                      value: checked[index],
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      // overlayColor: MaterialStatePropertyAll(Colors.amber),
                      //fillColor: MaterialStatePropertyAll(Colors.blue),
                      onChanged: (bool? value) {
                        setState(() {
                          checked[index] = value!;
                        });
                      },
                    ),
                  ),
                  title: Text(options[index]),
                  onTap: () {
                    Navigator.pop(context);
                    print('Selected: ${options[index]}');
                    for (int i = 0; i < checked.length; i++) {
                      if (checked[i]) {
                        print('${options[i]} is selected');
                      }
                    }
                    // Here you can perform other actions based on the selection
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 55,
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.black),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ))),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Apply",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
