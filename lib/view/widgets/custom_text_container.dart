import 'package:flutter/material.dart';
import 'package:langue_flutter/view/constants.dart';

class CustomTextContainer extends StatefulWidget {
  final double width;
  final String labelText;
  final String dataText;
  Widget prefixIcon;

  // ignore: use_key_in_widget_constructors
  CustomTextContainer({
    required this.width,
    required this.labelText,
    required this.dataText,
    this.prefixIcon = const SizedBox(),
  });

  @override
  State<CustomTextContainer> createState() => _CustomTextContainerState();
}

class _CustomTextContainerState extends State<CustomTextContainer> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: widget.width,
          height: isExpanded ? 158 : 65,
          margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          padding: const EdgeInsets.fromLTRB(10, 25, 10, 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white12),
            borderRadius: BorderRadius.circular(10),
          ),
          child: isExpanded
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(width: 25),
                          Center(
                            child: Text(
                              '8792597453',
                              style: kTextFieldStyle,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_drop_up,
                            color: Colors.white54,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'NOTE : ',
                        style: kDescriptionHeadingStyle,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Changing number requires\n',
                            style: kDescriptionContentStyle,
                          ),
                          TextSpan(
                            text: 'OTP verification',
                            style: kDescriptionContentStyle,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white54,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          'CHANGE NUMBER',
                          style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        widget.dataText,
                        textAlign: TextAlign.center,
                        style: kTextFieldStyle,
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white54,
                      ),
                    ],
                  ),
                ),
        ),
        Positioned(
          left: -125,
          right: 150,
          top: 42,
          child: widget.prefixIcon,
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 10,
          child: Container(
            padding: const EdgeInsets.fromLTRB(5, 1, 5, 0),
            child: Center(
              child: Text(
                widget.labelText,
                style: kTextFieldLabelStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
