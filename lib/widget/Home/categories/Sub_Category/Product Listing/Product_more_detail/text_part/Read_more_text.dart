import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ReadMoreText extends StatefulWidget {
  final String text;
  final int trimLength;
  final TextStyle? style;

  const ReadMoreText(this.text, {Key? key, this.trimLength = 215, this.style})
      : super(key: key);

  @override
  _ReadMoreTextState createState() => _ReadMoreTextState();
}

class _ReadMoreTextState extends State<ReadMoreText> {
  late String firstPart;
  late String secondPart;
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > widget.trimLength) {
      firstPart = widget.text.substring(0, widget.trimLength);
      secondPart = widget.text.substring(widget.trimLength);
    } else {
      firstPart = widget.text;
      secondPart = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: firstPart,
              style: widget.style,
              children: <TextSpan>[
                if (secondPart.isNotEmpty)
                  TextSpan(
                    text: isExpanded ? secondPart : '... ',
                    style: widget.style,
                  ),
                TextSpan(
                  text: isExpanded ? ' Show less' : ' Read more',
                  style: TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
