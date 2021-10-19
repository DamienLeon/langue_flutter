import 'package:flutter/material.dart';
import 'package:langue_flutter/view/constants.dart';

class CustomTextField extends StatelessWidget {
  final double width;
  final String labelText;
  final String hintText;
  final Function(String) onChanged;
  bool obscureText;
  Widget prefixIcon;
  Widget suffixIcon;

  // ignore: use_key_in_widget_constructors
  CustomTextField({
    required this.width,
    required this.labelText,
    required this.hintText,
    required this.onChanged,
    this.obscureText = false,
    this.prefixIcon = const SizedBox(),
    this.suffixIcon = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: width,
          height: 60,
          margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 15),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white12),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: TextFormField(
                  obscureText: obscureText,
                  cursorColor: Colors.white,
                  cursorHeight: 25,
                  cursorWidth: 1,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: kHintTextStyle,
                    border: InputBorder.none,
                  ),
                  onChanged: onChanged,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: -125,
          right: 150,
          top: 25,
          child: prefixIcon,
        ),
        Positioned(
          left: 0,
          right: 0,
          top: -4,
          child: Container(
            padding: const EdgeInsets.fromLTRB(5, 1, 5, 8),
            child: Center(
              child: Text(
                labelText,
                style: kTextFieldLabelStyle,
              ),
            ),
          ),
        ),
        Positioned(
          left: 150,
          right: -125,
          top: 25,
          child: suffixIcon,
        ),
      ],
    );
  }
}
