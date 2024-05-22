import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

enum ButtonType {
  primary,
  secondary,
  outlined,
}

class ButtonWidget extends StatelessWidget {
  final ButtonType buttonType;
  final String text;
  final Function()? onTap;
  final bool isLoading;
  final Widget? prefix;
  final bool _isEnabled;

  const ButtonWidget({
    super.key,
    required this.buttonType,
    required this.text,
    this.onTap,
    this.isLoading = false,
    this.prefix,
    bool? isEnabled,
  }) : _isEnabled = isEnabled ?? onTap != null;

  const ButtonWidget.primary({
    super.key,
    this.onTap,
    this.isLoading = false,
    required this.text,
    this.prefix,
    bool? isEnabled,
  })  : buttonType = ButtonType.primary,
        _isEnabled = isEnabled ?? onTap != null;

  const ButtonWidget.outlined({
    super.key,
    this.onTap,
    this.isLoading = false,
    required this.text,
    this.prefix,
    bool? isEnabled,
  })  : buttonType = ButtonType.outlined,
        _isEnabled = isEnabled ?? onTap != null;

  const ButtonWidget.secondary({
    super.key,
    this.onTap,
    this.isLoading = false,
    required this.text,
    this.prefix,
    bool? isEnabled,
  })  : buttonType = ButtonType.secondary,
        _isEnabled = isEnabled ?? onTap != null;

  Color getColor() => _isEnabled
      ? switch (buttonType) {
          ButtonType.primary => ColorApp.red,
          ButtonType.secondary => ColorApp.lightGrey,
          ButtonType.outlined => ColorApp.white,
        }
      : ColorApp.grey;

  Color getFocusColor() => switch (buttonType) {
        ButtonType.primary => ColorApp.darkRed,
        ButtonType.secondary => ColorApp.grey.withOpacity(0.2),
        ButtonType.outlined => ColorApp.red.withOpacity(0.2),
      };

  bool get isPrimary => buttonType == ButtonType.primary;
  bool get isSecondary => buttonType == ButtonType.secondary;
  bool get isOutlined => buttonType == ButtonType.outlined;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: getColor(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
        side: isOutlined
            ? const BorderSide(color: ColorApp.red, width: 1)
            : BorderSide.none,
      ),
      child: InkWell(
        onTap: _isEnabled && !isLoading ? onTap : null,
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
          side: isOutlined
              ? const BorderSide(color: ColorApp.red, width: 1)
              : BorderSide.none,
        ),
        overlayColor: WidgetStateProperty.all(getFocusColor()),
        focusColor: getFocusColor(),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: SizeApp.w28,
            vertical: SizeApp.h8,
          ),
          child: Center(
            child: isLoading
                ? SizedBox(
                    height: SizeApp.customHeight(22),
                    width: SizeApp.customHeight(22),
                    child: const LoadingWidget(),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (prefix != null) ...[
                        prefix!,
                        Gap.w8,
                      ],
                      Text(
                        text,
                        style: getTextStyle(),
                      )
                    ],
                  ),
          ),
        ),
      ),
    );
  }

  TextStyle getTextStyle() {
    return _isEnabled
        ? isPrimary
            ? TypographyApp.text1.bold.white
            : isOutlined
                ? TypographyApp.text1.bold.red
                : TypographyApp.text1.bold.grey
        : TypographyApp.text1.bold.black;
  }
}
