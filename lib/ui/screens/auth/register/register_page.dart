import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:vascommtest/shared/text_styles.dart';
import 'package:vascommtest/shared/themes.dart';
import 'package:vascommtest/shared/ui_component/kbutton_cs_widget.dart';
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderUserAuth(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:
                        const EdgeInsetsDirectional.symmetric(horizontal: paddingDefault),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: const Text(
                            RString.labelFirstName,
                            style: kTextTitleLabel,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 30),
                          child: const Text(
                            RString.labelLastName,
                            style: kTextTitleLabel,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      CommonTextFieldSimple(
                        label: null,
                        width: AppUtils.width / 2.6,
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
                      CommonTextFieldSimple(
                        width: AppUtils.width / 2.6,
                        colorText: greySubTitle,
                        hint: RString.labelLastName,
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
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: paddingDefault),
                    child: Text(
                      RString.labelNoKtp,
                      style: kTextTitleLabel,
                    ),
                  ),
                  CommonTextFieldSimple(
                    label: null,
                    colorText: greySubTitle,
                    hint: RString.labelNoKtpHint,
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
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: paddingDefault),
                    child: Text(
                      RString.labelEmail,
                      style: kTextTitleLabel,
                    ),
                  ),
                  CommonTextFieldSimple(
                    label: null,
                    colorText: greySubTitle,
                    hint: RString.labelHintEmail,
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
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: paddingDefault),
                    child: Text(
                      RString.labelNoTlpn,
                      style: kTextTitleLabel,
                    ),
                  ),
                  CommonTextFieldSimple(
                    label: null,
                    colorText: greySubTitle,
                    hint: RString.labelNoTlpnHint,
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
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: paddingDefault),
                    child: Text(
                      RString.labelPassword,
                      style: kTextTitleLabel,
                    ),
                  ),
                  CommonTextFieldSimple(
                    label: null,
                    colorText: greySubTitle,
                    hint: RString.labelHintPassword,
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
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: paddingDefault),
                    child: Text(
                      RString.labelConfirmPassword,
                      style: kTextTitleLabel,
                    ),
                  ),
                  CommonTextFieldSimple(
                    label: null,
                    colorText: greySubTitle,
                    hint: RString.labelConfirmPwdHint,
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
                  const SizedBox(
                    height: 51,
                  ),
                  footerContainer(context)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget footerContainer(BuildContext context) {
  return Container(
    margin: const EdgeInsetsDirectional.symmetric(horizontal: paddingDefault),
    child: Column(children: [
      KButtonCsThemes(
        onTap: () => {log("message")},
        height: 48,
        inputText: 'Login',iconDrawableRight: const Icon(Icons.arrow_forward_outlined,color: Colors.white)
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Sudah punya akun ?"),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Login Sekarang",
              style: TextStyle(
                color: kOxfordBluePrimary,
              ),
            ),
          ),
        ],
      ),
    ]),
  );
}

