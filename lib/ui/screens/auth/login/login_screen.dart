import 'package:flutter/material.dart';
import 'package:vascommtest/shared/text_styles.dart';
import 'package:vascommtest/shared/themes.dart';
import 'package:vascommtest/shared/ui_component/kbutton_cs_widget.dart';
import 'package:vascommtest/shared/ui_component/kedittext_cs_widget.dart';
import 'package:vascommtest/utils/assets.dart';
import 'package:vascommtest/utils/image_asset.dart';
import 'package:vascommtest/utils/localization/rstring.dart';
import 'package:vascommtest/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var textStyleSubtitle = kTextTitleLightSmall(kGreyBlueLight,null);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: AppUtils.width,
        height: AppUtils.height,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: AppUtils.height / 12,
              child: Container(
                decoration: const BoxDecoration(),
                width: AppUtils.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: AppUtils.height / 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                'Hai,',
                                style: kTextTitleLight,
                              ),
                              Text(
                                RString.hSlmtdatang,
                                style: kTextTitleBig,
                              ),
                            ],
                          ),
                           Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(RString.infoTitleLogin,
                                style: textStyleSubtitle),
                          ),
                        ],
                      ),
                    ),
                    AppImage(ImageAssets.loginBanner,  height: AppUtils.height / 4),
                    SizedBox(
                      height: AppUtils.height / 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: const [
                          Text('Username' ,style: kTextTitleLabel,),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CommonTextFieldSimple(
                      colorText: greySubTitle,
                      hint: RString.labelHintEmail,
                      controller: emailController,
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
                    SizedBox(
                      height: AppUtils.height / 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: const [
                          Text('Password' ,style: kTextTitleLabel,),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: kWhiteBG.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: _LoginTextField(
                            enable: true,
                            radius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
                            controller: passwordController,
                            hint: RString.labelHintPassword,
                            icon: Icons.visibility_off_outlined,
                            obscureText: true),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: AppUtils.height / 40,
                    ),
                    const KButtonCsThemes(
                      height: 48,
                      inputText: 'Login',
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Belum punya akun ?"),
                        MaterialButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => RegisterView(),
                            //   ),
                            // );
                          },
                          child: const Text(
                            "Daftar Sekarang",
                            style: TextStyle(
                              color: kOxfordBluePrimary,
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoginTextField extends StatefulWidget {
  final TextEditingController controller;
  final BorderRadius radius;
  final String hint;
  final IconData icon;
  final bool obscureText;
  final bool enable;

  const _LoginTextField({
    required this.radius,
    required this.controller,
    required this.hint,
    required this.icon,
    required this.enable,
    this.obscureText = false});

  @override
  State<_LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<_LoginTextField> {
  final _obscureNotifier = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _obscureNotifier,
      builder: (context, value, child)=>
          TextField(
            enabled: widget.enable,
            controller: widget.controller,
            obscureText:
            widget.obscureText ? _obscureNotifier.value : false,
            style: const TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white70,
                disabledBorder: OutlineInputBorder(
                  borderRadius: widget.radius,
                  borderSide: const BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.white
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: widget.radius,
                  borderSide: const BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.white
                  ),
                ),
                hintText: widget.hint,
                hintStyle: const TextStyle(color: Colors.grey,fontSize: 12),
                suffixIcon: widget.obscureText
                    ? IconButton(
                  visualDensity: VisualDensity.compact,
                  padding: EdgeInsets.zero,
                  icon: Icon(
                      value
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: Colors.grey
                  ),
                  onPressed: () {
                    _obscureNotifier.value = !value;
                  },
                )
                    : null
            ),
          ),
    );
  }
}