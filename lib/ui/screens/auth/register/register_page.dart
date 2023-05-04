import 'package:flutter/material.dart';
import 'package:vascommtest/shared/text_styles.dart';
import 'package:vascommtest/shared/themes.dart';
import 'package:vascommtest/shared/ui_component/kedittext_cs_widget.dart';
import 'package:vascommtest/ui/screens/auth/widget/header_userauth_page.dart';
import 'package:vascommtest/utils/localization/rstring.dart';
import 'package:vascommtest/utils/utils.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

TextEditingController firstNameController = TextEditingController();

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          children: <Widget>[
            const HeaderUserAuth(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  RString.labelFirstName,
                  style: kTextTitleLabel,
                ),
                Text(
                  RString.labelLastName,
                  style: kTextTitleLabel,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                TextField()
              //   CommonTextFieldSimple(
              //     colorText: greySubTitle,
              //     hint: RString.labelFirstName,
              //     controller: firstNameController,
              //     enable: true,
              //     colors: Colors.white,
              //     boxShadow: [
              //       BoxShadow(
              //         color: kWhiteBG.withOpacity(0.5),
              //         spreadRadius: 1,
              //         blurRadius: 5,
              //         offset: const Offset(0, 3),
              //       ),
              //     ],
              //   ),
              //   CommonTextFieldSimple(
              //     colorText: greySubTitle,
              //     hint: RString.labelFirstName,
              //     controller: firstNameController,
              //     enable: true,
              //     colors: Colors.white,
              //     boxShadow: [
              //       BoxShadow(
              //         color: kWhiteBG.withOpacity(0.5),
              //         spreadRadius: 1,
              //         blurRadius: 5,
              //         offset: const Offset(0, 3),
              //       ),
              //     ],
              //   ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget registerScreen() => Container(
      height: AppUtils.height / 1.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CommonTextFieldSimple(
            colorText: greySubTitle,
            hint: RString.labelFirstName,
            controller: firstNameController,
            enable: true,
            colors: Colors.white,
            boxShadow: [
              BoxShadow(
                color: kWhiteBG.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          const Text(
            RString.labelLastName,
            style: kTextTitleLabel,
          ),
        ],
      ),
    );
