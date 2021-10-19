import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPField extends StatelessWidget {
  final Function(String) onChanged;

  // ignore: use_key_in_widget_constructors
  const OTPField({
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.maxFinite,
          height: 100,
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.fromLTRB(15, 35, 15, 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white12),
            borderRadius: BorderRadius.circular(10),
          ),
          child: PinCodeTextField(
            length: 5,
            obscureText: false,
            animationType: AnimationType.fade,
            cursorColor: Colors.white,
            cursorHeight: 25,
            cursorWidth: 1,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.underline,
              inactiveColor: Colors.white54,
              borderWidth: 1,
              fieldHeight: 40,
              selectedColor: const Color(0xFF002C3E),
              selectedFillColor: const Color(0xFF002C3E),
              activeFillColor: Colors.white,
              activeColor: Colors.white,
            ),
            textStyle: const TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            animationDuration: const Duration(milliseconds: 300),
            //backgroundColor: Colors.blue.shade50,
            //enableActiveFill: false,
            //errorAnimationController: errorController,
            //controller: textEditingController,
            onCompleted: (v) {
              print("Completed");
            },
            onChanged: onChanged,
            beforeTextPaste: (text) {
              print("Allowing to paste $text");
              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
              //but you can show anything you want here, like your pop up saying wrong paste format or etc
              return true;
            },
            appContext: context,
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            top: 5,
            child: Container(
              padding: const EdgeInsets.fromLTRB(5, 1, 5, 8),
              child: const Center(
                child: Text(
                  'OTP',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
