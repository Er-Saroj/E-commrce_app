import 'package:first_ecommrce_app/widget/Home/home/Exclusive_section/Exclusive%20produst_list.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';
import 'scroll_text.dart';
import 'scrool_image.dart';

class Scroll_image extends StatefulWidget {
  const Scroll_image({Key? key}) : super(key: key);

  @override
  State<Scroll_image> createState() => _ScrollImageState();
}

class _ScrollImageState extends State<Scroll_image> {
  List<String> imagelist = [
    // Add your image URLs here
  ];
  int myslidindex = 0;

  shareimage() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;
    Share.shareXFiles([image], text: "successfully sent");
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 170,
          child: PageView.builder(
            itemCount: 5,
            onPageChanged: (value) {
              setState(() {
                myslidindex = value;
              });
            },
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(11),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Exclusive_sale(), // Ensure this widget exists
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Image.asset(
                      "assert/photos/headphone.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        scrool_text(myslidindex: myslidindex), // Ensure this widget exists
        Positioned(
          bottom: 15,
          right: 20,
          child: image_scroll_part(myslidindex: myslidindex), // Ensure this widget exists
        ),
      ],
    );
  }
}
