import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.5,
      margin: const EdgeInsets.only(top: 5),
      width: double.maxFinite,
      //margin: const EdgeInsets.only(bottom: 10),
      color: Colors.white54,
    );
  }
}
