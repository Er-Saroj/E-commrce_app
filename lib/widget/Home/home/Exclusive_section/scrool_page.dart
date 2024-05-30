import 'package:first_ecommrce_app/widget/Home/home/Exclusive_section/Exclusive%20produst_list.dart';
import 'package:first_ecommrce_app/widget/Home/home/Exclusive_section/scroll_text.dart';
import 'package:first_ecommrce_app/widget/Home/home/Exclusive_section/scrool_image.dart';
import 'package:first_ecommrce_app/widget/model/profile-section.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';

class Scroll_image extends StatefulWidget {
  const Scroll_image({super.key});

  @override
  State<Scroll_image> createState() => _Scroll_imageState();
}

class _Scroll_imageState extends State<Scroll_image> {
  List<String> imagelist = [
    //   "https://plus.unsplash.com/premium_photo-1661512088611-ead5d38a773a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    //   "https://images.unsplash.com/photo-1573167507387-6b4b98cb7c13?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    //   "https://images.unsplash.com/photo-1552581234-26160f608093?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    //   "https://images.unsplash.com/photo-1568992688065-536aad8a12f6?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ];
  int myslidindex = 0;

  shareimage() async {
    // ignore: unused_local_variable
    XFile? Image = await ImagePicker().pickImage(source: ImageSource.camera);
    // ignore: unnecessary_null_comparison
    if (imagelist == null) return;
    var image;
    Share.shareXFiles([image], text: "successfully sended");
  }

  @override
  Widget build(BuildContext context) {
    return // Divider();

        SingleChildScrollView(
            child: Column(children: [
      Column(
        children: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                height: 170,
                child: PageView.builder(
                  itemCount: 5,
                  // itemCount: imagelist.length,
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
                                    builder: (context) => Exclusive_sale()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Image.asset(
                              "assert/photos/headphone.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                        // Image.network(
                        //   imagelist[index],
                        //   height: 100,
                        //   fit: BoxFit.cover,
                        // ),
                        );
                  },
                ),
              ),
            ),
            scrool_text(myslidindex: myslidindex),
            Positioned(
              bottom: 15,
              // right: 50,
              right: 20,
              child: image_scroll_part(myslidindex: myslidindex),
            )
          ]),
        ],
      ),
    ]));
  }
}
