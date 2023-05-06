import 'package:flutter/material.dart';
import 'package:vascommtest/shared/text_styles.dart';
import 'package:vascommtest/shared/themes.dart';
import 'package:vascommtest/ui/screens/home/components/comp_body.dart';
import 'package:vascommtest/ui/screens/home/components/comp_item_product.dart';
import 'package:vascommtest/ui/screens/home/drawer_menu.dart';
import 'package:vascommtest/utils/assets.dart';
import 'package:vascommtest/utils/image_asset.dart';
import 'package:vascommtest/utils/localization/rstring.dart';
import 'package:vascommtest/utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: homeScreen(context, _scaffoldKey),
      endDrawer: const DrawerMenuScreen(),
    );
  }
}

Widget headerToolbar(
    BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
  return Container(
    margin: const EdgeInsets.only(left: 24.2, top: 44),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                scaffoldKey.currentState!.openEndDrawer();
              },
              child: const Icon(color: kPrussianBlue, Icons.menu),
            )),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                      color: kPrussianBlue, Icons.shopping_cart_rounded),
                )),
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Badge(
                      child: Icon(color: kPrussianBlue, Icons.notifications)),
                )),
          ],
        )
      ],
    ),
  );
}

Widget bannerFirst() {
  final titleSt1 =
      kTextTitleCustomRegular(kPrussianBlue, 18.0, FontWeight.w600);
  final titleSt2 =
      kTextTitleCustomRegular(kPrussianBlue, 18.0, FontWeight.w800);

  return Stack(alignment: Alignment.topRight, children: <Widget>[
    Container(
      height: 161,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 131,
            width: double.infinity,
            padding: const EdgeInsets.only(left:15,top: 9),
            margin: const EdgeInsets.symmetric(horizontal: paddingDefault),
            decoration: BoxDecoration(
              // border: Border.all(width: 1.0,color: Colors.black),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: kWhiteBG.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
                const BoxShadow(
                  color: Colors.white,
                  blurRadius: 9.0,
                  offset: Offset(-5, 0),
                ),
                const BoxShadow(
                  color: Colors.white,
                  blurRadius: 5.0,
                  offset: Offset(5, 0),
                ),
              ],
              gradient: const LinearGradient(
                  colors: [
                    kBlueLightAccent,
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    //add more colors for gradient
                  ],
                  begin: Alignment.topRight, //begin of the gradient color
                  end: Alignment.bottomLeft, //end of the gradient color
                  stops: [0, 0.4, 0.5, 0.5] //stops for individual color
                  //set the stops number equal to numbers of color
                  ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: 'Solusi, ',
                              style: titleSt1,
                              children: [
                                TextSpan(
                                    text: 'Kesehatan Anda', style: titleSt2),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: 201,
                            child: Text(
                              'Update informasi seputar kesehatan semua bisa disini !',
                              style: kTextTitleLightSmall(
                                  kTextBlueLightDark, null),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 16),
                            height: 40,
                            width: AppUtils.width / 2.6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: kOxfordBluePrimary,
                            ),
                            child: MaterialButton(
                              onPressed: () {},
                              child: const Expanded(
                                child: Text(
                                  'Selengkapnya',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ),
    AppImage(
      ImageAssets.homeBanner1,
    ),
  ]);
}

Widget bannerSecond() {
  final titleSt1 =
      kTextTitleCustomRegular(kPrussianBlue, 18.0, FontWeight.w600);
  final titleSt2 =
      kTextTitleCustomRegular(kPrussianBlue, 18.0, FontWeight.w800);

  return Stack(alignment: Alignment.topRight, children: <Widget>[
    Container(
      height: 161,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15,top: 28),
            height: 130,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: paddingDefault),
            decoration: BoxDecoration(
              // border: Border.all(width: 1.0,color: Colors.black),
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 5.0,
                  offset: Offset(-5, 0),
                ),
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 5.0,
                  offset: Offset(5, 0),
                ),
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 5.0,
                  offset: Offset(-5, 0),
                ),
              ],
              gradient: const LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    //add more colors for gradient
                  ],
                  begin: Alignment.topRight, //begin of the gradient color
                  end: Alignment.bottomLeft, //end of the gradient color
                  stops: [0, 0.4, 0.5, 0.5] //stops for individual color
                  //set the stops number equal to numbers of color
                  ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Layanan Khusus',
                            style: titleSt1,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: AppUtils.width/2.3,
                            child: Expanded(
                              child: Text(
                                'Tes Covid 19, Cegah Corona Sedini Mungkin',
                                style:
                                    kTextTitleLightSmall(kTextBlueLightDark, null),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: InkWell(
                              onTap: () {},
                              child: Row(
                                children: const [
                                  Text('Dafter Tes', style: kTextTitleLabel),
                                  Icon(Icons.arrow_forward_outlined,
                                      color: kPrussianBlue)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      margin: const EdgeInsets.only(right: 30),
      child: AppImage(
        ImageAssets.homeBanner2,
        height: 120,
        width: 120,
      ),
    ),
  ]);
}

Widget bannerThird() {
  final titleSt1 =
      kTextTitleCustomRegular(kPrussianBlue, 18.0, FontWeight.w600);
  final titleSt2 =
      kTextTitleCustomRegular(kPrussianBlue, 18.0, FontWeight.w800);
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: paddingDefault),
    padding: const EdgeInsets.only(left: 15, right: 16, top: 16, bottom: 15),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: kWhiteBG.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 5,
          offset: const Offset(0, 5),
        ),
        const BoxShadow(
          color: Colors.white,
          blurRadius: 5.0,
          offset: Offset(-5, 0),
        ),
        const BoxShadow(
          color: Colors.white,
          blurRadius: 5.0,
          offset: Offset(5, 0),
        ),
      ],
      gradient: const LinearGradient(
          colors: [
            Colors.white,
            Colors.white,
            Colors.white,
            Colors.white,
            //add more colors for gradient
          ],
          begin: Alignment.topRight, //begin of the gradient color
          end: Alignment.bottomLeft, //end of the gradient color
          stops: [0, 0.4, 0.5, 0.5] //stops for individual color
          //set the stops number equal to numbers of color
          ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: AppImage(
                    ImageAssets.homeBanner3,
                    fit: BoxFit.fitHeight,
                    height: 90,
                    width: 100,
                  ),
                ),
              ],
            )),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Track Pemeriksaan',
                    style: titleSt1,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Kamu dapat mengecek progress pemeriksaanmu disini',
                    style: kTextTitleLightSmall(kTextBlueLightDark, null),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: const [
                          Text('Track', style: kTextTitleLabel),
                          Icon(Icons.arrow_forward_outlined,
                              color: kPrussianBlue)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget homeScreen(BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) =>
    ListView(
      children: [
        headerToolbar(context, scaffoldKey),
        const SizedBox(
          height: 31,
        ),
        bannerFirst(),
        const SizedBox(
          height: 17,
        ),
        bannerSecond(),
        const SizedBox(
          height: 17,
        ),
        bannerThird(),
        const SizedBox(
          height: 17,
        ),
        SearchBox(),
        const HomeBodyBox(),
      ],
    );

Widget SearchBox() => Container(
      margin: const EdgeInsets.only(
          bottom: 17, left: paddingDefault, right: paddingDefault),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                padding: const EdgeInsets.all(8.0),
                child: const Icon(Icons.menu_rounded),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 40.0,
                width: AppUtils.width / 1.4,
                padding:
                    const EdgeInsets.only(left: 17.5, right: 17.5, bottom: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: kWhiteBG.withOpacity(1),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      blurRadius: 5.0,
                      offset: Offset(-5, 0),
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      blurRadius: 5.0,
                      offset: Offset(5, 0),
                    ),
                  ],
                ),
                child: TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {},
                      visualDensity: VisualDensity.compact,
                      icon: const Icon(Icons.search, color: kPrussianBlue),
                    ),
                    border: InputBorder.none,
                    hintText: RString.labelSearch,
                    hintStyle:
                        const TextStyle(color: greySubTitle, fontSize: 12),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
