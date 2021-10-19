import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:langue_flutter/view/widgets/custom_button.dart';
import 'package:langue_flutter/view/widgets/custom_divider.dart';
import 'package:langue_flutter/view/widgets/custom_text_container.dart';
import 'package:langue_flutter/view/widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
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
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              borderWidth: 0,
              blur: 15,
              //borderRadius: BorderRadius.circular(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/10-2-decorative-line-gold-png-image.png',
                    scale: 6,
                    color: const Color(0xFFEDC967),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomTextField(
                              width: width / 2.3,
                              labelText: 'First Name',
                              hintText: 'Ex. Damien',
                              onChanged: (value) {},
                            ),
                            const SizedBox(width: 5),
                            CustomTextField(
                              width: width / 2.3,
                              labelText: 'Last Name',
                              hintText: 'Ex. Leon',
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                        CustomTextContainer(
                          width: width,
                          labelText: 'Phone Number',
                          dataText: '8792597453',
                          prefixIcon:
                              const Icon(Icons.phone, color: Colors.white54),
                        ),
                        CustomTextField(
                          width: width,
                          labelText: 'Email Address',
                          hintText: 'Ex. damienleon@email.com',
                          prefixIcon:
                              const Icon(Icons.mail, color: Colors.white54),
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                  const CustomDivider(),
                  CustomButton(
                    buttonTitle: 'CREATE USER',
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
