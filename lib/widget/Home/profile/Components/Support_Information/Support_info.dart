import 'package:first_ecommrce_app/widget/Home/profile/Components/Support_Information/FAQs.dart';
import 'package:first_ecommrce_app/widget/Home/profile/Components/Support_Information/Privacy_policy.dart';
import 'package:first_ecommrce_app/widget/Home/profile/Components/Support_Information/Tearm_condition.dart';
import 'package:first_ecommrce_app/widget/model/profile-section.dart';
import 'package:flutter/material.dart';

class Support_info_details extends StatelessWidget {
  const Support_info_details({
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
                    MaterialPageRoute(builder: (context) => Privacy_Policy()),
                  );
                  break;
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tearm_Condition()),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FAQa()),
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
                supportimagepath[index],
                width: 25,
                color: _isSwitched ? Colors.white : Colors.black54,
              ),
              title: Text(
                Support[index],
                style: TextStyle(
                  color: _isSwitched ? Colors.white : Colors.black54,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: _isSwitched ? Colors.white : Colors.black54,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
