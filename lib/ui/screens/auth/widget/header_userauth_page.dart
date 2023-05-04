import 'package:flutter/material.dart';
import 'package:vascommtest/shared/text_styles.dart';
import 'package:vascommtest/shared/themes.dart';
import 'package:vascommtest/utils/assets.dart';
import 'package:vascommtest/utils/image_asset.dart';
import 'package:vascommtest/utils/localization/rstring.dart';
import 'package:vascommtest/utils/utils.dart';

class HeaderUserAuth extends StatelessWidget {
  const HeaderUserAuth({super.key});

  @override
  Widget build(BuildContext context) {
    var textStyleSubtitle = kTextTitleLightSmall(kGreyBlueLight, null);
    return Column(
      children: [
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
        AppImage(ImageAssets.loginBanner,height: AppUtils.size.height /5,),
        SizedBox(
          height: AppUtils.height / 30,
        ),
      ],
    );
  }
}
