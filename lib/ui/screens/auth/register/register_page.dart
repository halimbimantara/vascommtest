import 'package:flutter/material.dart';
import 'package:vascommtest/shared/text_styles.dart';
import 'package:vascommtest/shared/themes.dart';
import 'package:vascommtest/shared/ui_component/kedittext_cs_widget.dart';
import 'package:vascommtest/ui/screens/auth/widget/header_userauth_page.dart';
import 'package:vascommtest/utils/localization/rstring.dart';

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderUserAuth(),
            inputSection()],
        ),
      ),
    );
  }
}

Widget inputSection() => Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
        ],
      ),
    );
