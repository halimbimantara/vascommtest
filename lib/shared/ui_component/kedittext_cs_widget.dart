import 'package:flutter/material.dart';
import 'package:vascommtest/shared/themes.dart';
import 'package:vascommtest/shared/ui_component/kbutton_cs_widget.dart';

enum TailingType { type1, type2, type3 }

class CommonTextFieldSimple extends StatelessWidget {
  final String? label;
  final String hint;
  final TextEditingController? controller;
  final Icon? trailingIcon;
  final double? fontSizeLabel;
  final double? fontSizeHint;
  final TailingType tailingType;
  final double height;
  final double width;

  final int? maxLength;
  final String? tailingText;
  final ValueChanged? onChanged;
  final ValueChanged<String>? onSubmit;
  final String? popoverInfo;
  final bool enablePopover;
  final bool clearField;
  final bool? emptyField;

  /// Add this to enable onTap
  /// change the value with Value parameter
  final Function? onTap;
  final String? value;
  final TextInputType textInputType;
  final EdgeInsets? margin;
  final Color colors;
  final Color colorText;
  final bool enable;
  final Function? iconTap;
  final TextAlign? textAlignVal;
  final List<BoxShadow>? boxShadow;

  const CommonTextFieldSimple(
      {Key? key,
        this.label,
        this.maxLength,
        this.hint = '',
        this.fontSizeLabel = 12,
        this.fontSizeHint = 12,
        this.controller,
        this.textAlignVal = TextAlign.left,
        this.onChanged,
        this.height = 50,
        this.width = double.infinity,
        this.trailingIcon,
        this.tailingType = TailingType.type1,
        this.popoverInfo,
        this.enablePopover = false,
        this.onTap,
        this.value,
        this.colors = Colors.white,
        this.colorText = Colors.black,
        this.textInputType = TextInputType.text,
        this.margin,
        this.clearField = false,
        this.emptyField = false,
        this.enable = true,
        this.tailingText,
        this.onSubmit,
        this.iconTap, this.boxShadow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: EdgeInsets.fromLTRB(margin != null ? margin!.left : 20, 22,
                margin != null ? margin!.right : 22, 10),
            child: Row(
              children: [
                Text(
                  label!,
                  style: TextStyle(
                      color: greySubTitle, fontSize: fontSizeLabel),
                ),
                const SizedBox(width: 8),
                Visibility(
                  visible: enablePopover,
                  child: Popover(popoverInfosub: popoverInfo),
                ),
              ],
            ),
          ),
        onTap == null
            ? (tailingText == null)
            ? Container(
          height: height,
          width: width,
          margin:
          margin ?? const EdgeInsets.only(left: 20, right: 22),
          padding: const EdgeInsets.only(left: 17.5, right: 17.5),
          decoration: BoxDecoration(
            color: colors,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: emptyField!
                    ? kRedDark
                    : Colors.white),
            boxShadow: boxShadow
          ),
          child: TextField(
            textAlign: textAlignVal!,
            enabled: enable,
            style: TextStyle(color: colorText),
            maxLength: maxLength,
            controller: controller,
            inputFormatters: const [],
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: TextStyle(
                  color: greySubTitle,
                  fontSize: fontSizeHint),
              suffix: onSubmit != null
                  ? InkWell(
                  onTap: () {
                    onSubmit!(controller!.text);
                  },
                  child: const Text(
                    '+ Add',
                    style: TextStyle(
                      color: kBlueAccent,
                      fontSize: 14,
                    ),
                  ))
                  : null,
            ),
            onChanged: onChanged,
            keyboardType: textInputType,
            maxLines:
            textInputType == TextInputType.multiline ? null : 1,
            onSubmitted: onSubmit,
          ),
        )
            : tailingType == TailingType.type1
            ? Row(
          children: [
            Container(
              height: height,
              width: width,
              margin: margin ??
                  const EdgeInsets.only(left: 20, right: 22),
              padding:
              const EdgeInsets.only(left: 17.5, right: 17.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                    color: emptyField!
                        ? redClose
                        : dividerColor),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: TextField(
                      controller: controller,
                      maxLength: maxLength,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: hint,
                          hintStyle: TextStyle(
                              color: greySubTitle,
                              fontSize: fontSizeHint)),
                      keyboardType: textInputType,
                      maxLines:
                      textInputType == TextInputType.multiline
                          ? null
                          : 1,
                    ),
                  ),
                ],
              ),
            ),
            if (tailingType == TailingType.type1)
              Text(
                tailingText!,
                style: const TextStyle(
                  color: greySubTitle,
                  fontSize: 13,
                ),
              ),
          ],
        )
            : Padding(
          padding: margin ??
              const EdgeInsets.only(left: 20, right: 22),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Container(
                  height: height,
                  width: width,
                  padding: const EdgeInsets.only(
                      left: 17.5, right: 17.5),
                  decoration: BoxDecoration(
                    borderRadius: tailingType == TailingType.type3
                        ? const BorderRadius.only(topLeft: Radius.circular(8),bottomLeft: Radius.circular(8))
                        : BorderRadius.circular(8),
                    border: Border.all(
                        color: emptyField!
                            ? redClose
                            : dividerColor),
                  ),
                  child: TextField(
                    maxLength: maxLength,
                    controller: controller,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: hint,
                        hintStyle: TextStyle(
                            color: greySubTitle,
                            fontSize: fontSizeHint)),
                    keyboardType: textInputType,
                    maxLines:
                    textInputType == TextInputType.multiline
                        ? null
                        : 1,
                    onChanged: onChanged,
                  ),
                ),
              ),
              if (tailingType == TailingType.type2)
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0),
                  child: Text(
                    tailingText!,
                    style: const TextStyle(
                      color: greySubTitle,
                      fontSize: 13,
                    ),
                  ),
                ),
              if (tailingType == TailingType.type3)
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0),
                  height: height,
                  decoration: BoxDecoration(
                    color: colors,
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        topRight: Radius.circular(8)),
                    border: Border.all(
                        color: emptyField!
                            ? redClose
                            : dividerColor),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      tailingText!,
                      style: const TextStyle(
                        color: greySubTitle,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        )
            : GestureDetector(
          onTap: onTap as void Function()?,
          child: Container(
            height: height,
            width: double.infinity,
            margin: margin ?? const EdgeInsets.only(left: 20, right: 22),
            padding: const EdgeInsets.only(left: 17.5, right: 17.5),
            decoration: BoxDecoration(
              color: colors,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: emptyField!
                      ? redClose
                      : dividerColor),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    value?.isEmpty ?? true ? hint : value!,
                    style: value?.isEmpty ?? true
                        ? TextStyle(
                        color: greySubTitle,
                        fontSize: fontSizeHint)
                        : const TextStyle(
                        color: Colors.black, fontSize: 16),
                  ),
                ),
                GestureDetector(
                    onTap: iconTap as void Function()?,
                    child: trailingIcon ?? const SizedBox())
              ],
            ),
          ),
        ),
      ],
    );
  }
}
