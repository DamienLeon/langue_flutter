import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomButton extends StatelessWidget {
  final String buttonTitle;
  final Function onPressed;

  const CustomButton({
    Key? key,
    required this.buttonTitle,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 65,
      width: double.maxFinite,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF002C3E),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFFAE8625),
            Color(0xFFF7EF8A),
            Color(0xFFEDC967),
            Color(0xFFD2AC47),
            Color(0xFFEDC967),
            Color(0xFFD2AC47),
          ],
        ),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white60,
          width: 2,
        ),
      ),
      child: GestureDetector(
        onTap: onPressed(),
        child: Center(
          child: Shimmer.fromColors(
            baseColor: Colors.white,
            highlightColor: const Color(0xFFBBBBBB),
            child: Text(
              buttonTitle,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 18,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
