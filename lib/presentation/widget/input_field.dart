import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_project/config/app_text_style.dart';
import 'package:test_project/gen/colors.gen.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    this.height = 50,
    this.width,
    this.hint = "hint",
    this.suffixTxt,
    required this.controller,
    this.disabled = false,
    this.onchange,
    this.inputType,
    this.stroke = true,
    this.prefixIcon,
    this.suffixIcon,
    this.hideText = false,
    this.onTap,
    this.darkText = true,
    this.validator,
    this.readOnly = false,
    this.error = false,
    this.onEditingComplete,
    this.focusNode,
    this.autoValiation = false,
    this.autofocus = false,
    this.inputFormatter,
    this.charLength = 50,
    this.extendable = false,
    this.maxLine,
    this.minLine,
    this.phoneField = false,
    this.onCountryChanged,
    this.countryCode,
    this.centerText = false,
    this.style,
    this.borderOnlyDown = false,
  });

  final double? height;
  final double? width;
  final String hint;
  final String? suffixTxt;
  final TextEditingController controller;
  final bool disabled;
  final Function(dynamic)? onchange;
  final TextInputType? inputType;
  final bool stroke;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool hideText;
  final VoidCallback? onTap;
  final bool darkText;
  final dynamic Function(dynamic)? validator;
  final bool readOnly;
  final bool error;
  final VoidCallback? onEditingComplete;
  final FocusNode? focusNode;
  final bool autoValiation;
  final bool autofocus;
  final List<TextInputFormatter>? inputFormatter;
  final int charLength;
  final bool extendable;
  final int? maxLine;
  final bool phoneField;
  final Function(dynamic)? onCountryChanged;
  final String? countryCode;
  final bool centerText;
  final TextStyle? style;
  final bool borderOnlyDown;
  final dynamic minLine;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: height,
      child: TextFormField(
        textAlign: centerText ? TextAlign.center : TextAlign.left,
        maxLength: charLength,
        controller: controller,
        readOnly: readOnly,
        onTap: onTap,
        validator: (value) => validator!(value),
        keyboardType: inputType ?? TextInputType.text,
        onChanged: onchange,
        onEditingComplete: onEditingComplete,
        focusNode: focusNode,
        autofocus: autofocus,
        textAlignVertical: TextAlignVertical.bottom,
        obscureText: hideText,
        inputFormatters: inputFormatter ?? [],
        style: style ??
            (darkText
                ? AppTextStyle.withColor(
                    color: ColorName.white.withOpacity(.8),
                    style: AppTextStyle.h4Bold,
                  )
                : AppTextStyle.withColor(
                    color: Colors.white,
                    style: AppTextStyle.h4Bold,
                  )),
        decoration: InputDecoration(
          counterText: '',
          enabled: !disabled,
          focusColor: ColorName.primaryColor,
          fillColor: ColorName.primaryColor,
          border: stroke
              ? borderOnlyDown
                  ? const UnderlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    )
                  : const OutlineInputBorder(
                      gapPadding: 100,
                      borderSide: BorderSide(width: 1, color: ColorName.white),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )
              : InputBorder.none,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hint,
          hintStyle: style ??
              (darkText
                  ? AppTextStyle.withColor(
                      color: ColorName.white.withOpacity(.5),
                      style: AppTextStyle.h4Bold,
                    )
                  : AppTextStyle.withColor(
                      color: Colors.white,
                      style: AppTextStyle.h4Bold,
                    )),
          suffixText: suffixTxt ?? '',
          enabledBorder: stroke
              ? borderOnlyDown
                  ? const UnderlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    )
                  : OutlineInputBorder(
                      borderSide: BorderSide(
                          width: error ? 1.5 : .8,
                          color: error ? ColorName.red : ColorName.white),
                      borderRadius: const BorderRadius.all(Radius.circular(10)))
              : InputBorder.none,
        ),
      ),
    );
  }
}
