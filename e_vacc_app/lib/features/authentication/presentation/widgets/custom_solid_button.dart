import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button_loading_indicator.dart';

class AppSolidButton extends StatelessWidget {
  const AppSolidButton(
      {this.onPressed,
      this.text,
      this.textColor,
      this.backgroundColor,
      this.height,
      this.isLoading = false,
      this.prefixIcon,
      this.elevation});

  final Function()? onPressed;
  final String? text;
  final Color? textColor;
  final Color? backgroundColor;
  final Widget? prefixIcon;

  /// The [Height] is 45.0 by default
  final double? height;
  final bool isLoading;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height ?? 45,
      elevation: elevation,
      minWidth: double.infinity,
      onPressed: onPressed,
      color: backgroundColor ?? Theme.of(context).buttonColor,
      textColor: textColor ?? Theme.of(context).textTheme.button!.color!,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: isLoading
          ? ButtonLoadingIndicator(
              color: textColor ?? Theme.of(context).textTheme.button!.color!,
              width: 20,
              height: 20,
            )
          : prefixIcon == null
              ? Text(
                  text!,
                  style: GoogleFonts.dosis(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: textColor,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: prefixIcon,
                    ),
                    Text(text!)
                  ],
                ),
    );
  }
}
