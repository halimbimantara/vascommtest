import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:vascommtest/shared/themes.dart';
import 'package:vascommtest/utils/utils.dart';

class Popover extends StatelessWidget {
  final String? popoverInfosub;

  const Popover({Key? key, this.popoverInfosub}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const Icon(
        Icons.info_outline,
        size: 11,
        color: redClose ,
      ),
      onTap: () {
        showPopover(
          context: context,
          bodyBuilder: (context) => Container(
              padding: const EdgeInsets.all(20), child: Text(popoverInfosub!)),
          onPop: () => {},
          direction: PopoverDirection.top,
          width: 220,
          arrowHeight: 15,
          arrowWidth: 30,
        );
      },
    );
  }
}
class KButtonCsThemes extends StatelessWidget {
  final String inputText;
  final double height;
  final Icon? iconDrawableRight;
  final Function()? onTap;

  const KButtonCsThemes({super.key, required this.inputText, required this.height,required this.onTap, required this.iconDrawableRight});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: kOxfordBluePrimary,
      ),
      child: MaterialButton(
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              width: 70,
            ),
            Text(
              inputText,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),

            const SizedBox(
              width: 20,
            ),
             setRightIcon(iconDrawableRight)
          ],
        ),
      ),
    );
  }
}

Widget setRightIcon(Icon? iconDrawableRight) {
  return iconDrawableRight != null ?  const Icon(Icons.arrow_forward_outlined,color: Colors.white):Container();
}
