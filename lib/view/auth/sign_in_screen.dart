import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:langue_flutter/view/constants.dart';
import 'package:langue_flutter/view/widgets/custom_button.dart';
import 'package:langue_flutter/view/widgets/custom_divider.dart';
import 'package:langue_flutter/view/widgets/custom_text_field.dart';
import 'package:langue_flutter/view/widgets/otp_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
                height: 400,
                width: double.maxFinite,
                //margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(15),
                borderWidth: 0,
                blur: 15,
                //borderRadius: BorderRadius.circular(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/10-2-decorative-line-gold-png-image.png',
                        scale: 6,
                        color: const Color(0xFFEDC967),
                      ),
                    ),
                    const SizedBox(height: 18),
                    CustomTextField(
                      width: MediaQuery.of(context).size.width,
                      labelText: 'User ID',
                      hintText: 'Please enter your User ID',
                      prefixIcon:
                          const Icon(Icons.person, color: Colors.white54),
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      width: MediaQuery.of(context).size.width,
                      labelText: 'Password',
                      hintText: 'Please enter your User ID ',
                      obscureText: true,
                      prefixIcon:
                          const Icon(Icons.vpn_key, color: Colors.white54),
                      suffixIcon:
                          const Icon(Icons.visibility, color: Colors.white54),
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Forgot Password?',
                      style: kDescriptionHeadingStyle.copyWith(fontSize: 13),
                      textAlign: TextAlign.right,
                    ),
                    const SizedBox(height: 10),
                    const CustomDivider(),
                    const SizedBox(height: 2),
                    Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        strutStyle: StrutStyle(height: 1.7),
                        text: TextSpan(
                          text: "Don't have an account yet?\n",
                          style:
                              kDescriptionContentStyle.copyWith(fontSize: 13),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'REGISTER',
                              style: kDescriptionHeadingStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 2),
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
