import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:langue_flutter/view/widgets/custom_button.dart';
import 'package:langue_flutter/view/widgets/custom_divider.dart';
import 'package:langue_flutter/view/widgets/custom_text_field.dart';
import 'package:langue_flutter/view/widgets/otp_field.dart';

class PhoneVerificationScreen extends StatelessWidget {
  const PhoneVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color(0xFF002C3E),
            // image: DecorationImage(
            //   image: AssetImage('assets/pexels-dids-3029545.jpg'),
            //   fit: BoxFit.fill,
            // ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Container(
                    //height: double.maxFinite,
                    ),
              ),
              GlassContainer.clearGlass(
                height: 350,
                width: double.maxFinite,
                //margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(15),
                borderWidth: 0,
                blur: 15,
                //borderRadius: BorderRadius.circular(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/10-2-decorative-line-gold-png-image.png',
                      scale: 6,
                      color: const Color(0xFFEDC967),
                    ),
                    const SizedBox(height: 18),
                    CustomTextField(
                      width: MediaQuery.of(context).size.width,
                      labelText: 'Phone Number',
                      hintText: 'Please enter your phone number',
                      onChanged: (value) {},
                    ),
                    OTPField(
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 10),
                    const CustomDivider(),
                    CustomButton(
                      buttonTitle: 'SUBMIT',
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
