import 'package:first_ecommrce_app/widget/Home/profile/Components/Personal_ingormation/Order_history/Order_History.dart';
import 'package:first_ecommrce_app/widget/Home/profile/Components/Personal_ingormation/Payment_method/Payment_method.dart';
import 'package:first_ecommrce_app/widget/Home/profile/Components/Personal_ingormation/Shopping/Shopping_add.dart';
import 'package:first_ecommrce_app/widget/model/profile-section.dart';
import 'package:flutter/material.dart';

class Personal_info_details extends StatelessWidget {
  const Personal_info_details({
    super.key,
    required bool isSwitched,
  }) : _isSwitched = isSwitched;

  final bool _isSwitched;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        // shrinkWrap: true,
        itemCount: personal.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) => SizedBox(
          height: 40,
          child: InkWell(
            onTap: () {
              switch (index) {
                case 0:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Shopping_Address(isSwitched: _isSwitched)),
                  );
                  break;
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Payment_method()),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Order_history()),
                  );
                  break;

                default:
                  break;
              }
            },
            child: ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: -20.0, horizontal: 16.0),
              leading: Image.asset(
                personalimagepath[index],
                width: 25,
                color: _isSwitched ? Colors.white : Colors.black54,
              ),
              title: Text(
                personal[index],
                style: TextStyle(
                  color: _isSwitched ? Colors.white : Colors.black54,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: _isSwitched ? Colors.white : Colors.black54,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
