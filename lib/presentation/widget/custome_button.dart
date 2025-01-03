import 'package:flutter/material.dart';
import 'package:test_project/core/utils/ui_helpers.dart';
import 'package:test_project/gen/colors.gen.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    super.key,
    required this.text,
    required this.onTap,
    this.btnColor = ColorName.primaryColor,
    this.textColor = ColorName.white,
    this.height = 50,
    this.width,
    this.stroke = false,
    this.round = true,
    this.stkWidth = 2,
    this.textStyle,
    this.alignment,
    this.icon,
    this.disabled = false,
    required this.loading,
    this.iconOnly = false,
  });
  final bool stroke;
  final String text;
  final VoidCallback onTap;
  final Color btnColor;
  final Color textColor;
  final double height;
  final double? width;
  final bool round;
  final double stkWidth;
  final TextStyle? textStyle;
  final Widget? icon;
  final MainAxisAlignment? alignment;
  final bool disabled;
  final bool loading;
  final bool iconOnly;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width ?? MediaQuery.of(context).size.width * .5,
      child: ElevatedButton(
        onPressed: disabled || loading
            ? () {}
            : () => {
                  FocusScope.of(context).unfocus(),
                  onTap(),
                },
        style: ElevatedButton.styleFrom(
          backgroundColor: stroke
              ? Colors.transparent
              : disabled
                  ? ColorName.primaryColor
                  : btnColor,
          side: stroke
              ? BorderSide(
                  color: btnColor,
                  width: stkWidth,
                  strokeAlign: BorderSide.strokeAlignInside)
              : BorderSide.none,
          shape: round
              ? const StadiumBorder()
              : const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(middleSize)),
                ),
        ),
        child: Row(
          mainAxisAlignment: alignment ?? MainAxisAlignment.center,
          children: [
            loading
                ? const Row(
                    children: [
                      horizontalSpaceSmall,
                      SizedBox(
                        width: 16,
                        height: 16,
                        child:
                            CircularProgressIndicator(color: ColorName.white),
                      ),
                    ],
                  )
                : iconOnly
                    ? icon ?? Container()
                    : Text(text,
                        style: textStyle ??
                            Theme.of(context).textTheme.bodyLarge?.copyWith(
                                color:
                                    Theme.of(context).colorScheme.onPrimary)),
          ],
        ),
      ),
    );
  }
}
