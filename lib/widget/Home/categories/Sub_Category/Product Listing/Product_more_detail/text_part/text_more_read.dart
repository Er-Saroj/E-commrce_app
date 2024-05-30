import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/Product%20Listing/Product_more_detail/text_part/Read_more_text.dart';
import 'package:flutter/material.dart';

class More_read_text extends StatelessWidget {
  const More_read_text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 8),
        child: SingleChildScrollView(
          child: SizedBox(
              // height: double.infinity,
              //height: 200,
              width: 320,
              child: SingleChildScrollView(
                child: ReadMoreText(
                  trimLength: 215,
                  "Constructed with high-quality silicone material, the Loop Silicone Strong Magnetic Watch ensures a comfortable and secure fit on your wrist. The soft and flexible silicone is gentle on the skin, making it ideal for extended wear. Its lightweight design allows for a seamless blend of comfort and durability.                                                                                                                                                                                                                                                    One of the standout features of this watch band is its strong magnetic closure. The powerful magnets embedded within the band provide a secure and reliable connection, ensuring that your smartwatch stays firmly in place throughout the day. Say goodbye to worries about accidental detachment or slippage - the magnetic closure offers a peace of mind for active individuals on the go.                                                                                                                                                                                                                                                  The Loop Silicone Strong Magnetic Watch Band is highly versatile, compatible with a wide range of smartwatch models. Its adjustable strap length allows for a customizable fit, catering to various wrist sizes. Whether you're engaging in intense workouts or attending formal occasions, this watch band effortlessly adapts to your style and activity level.",
                  style: TextStyle(color: Colors.black54),
                ),
              )),
        ));
  }
}
