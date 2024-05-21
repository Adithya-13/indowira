import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indowira/src/constants/constants.dart';
import 'package:indowira/src/shared/extensions/extensions.dart';
import 'package:indowira/src/widgets/widgets.dart';

enum ButtonType {
  primary,
  secondary,
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
      ? buttonType == ButtonType.primary
          ? ColorApp.red
          : ColorApp.lightGrey
      : ColorApp.grey;

  Color getFocusColor() =>
      buttonType == ButtonType.primary ? ColorApp.darkRed : ColorApp.grey;

  bool get isPrimary => buttonType == ButtonType.primary;
  bool get isSecondary => buttonType == ButtonType.secondary;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: getColor(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
        side: BorderSide.none,
      ),
      child: InkWell(
        onTap: _isEnabled && !isLoading ? onTap : null,
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
          side: BorderSide.none,
        ),
        overlayColor: WidgetStateProperty.all(getFocusColor()),
        focusColor: getFocusColor(),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: SizeApp.w28,
            vertical: SizeApp.h12,
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
                        style: _isEnabled
                            ? isPrimary
                                ? TypographyApp.text1.bold.white
                                : TypographyApp.text1.bold.grey
                            : TypographyApp.text1.bold.black,
                      )
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
