import 'package:dbestech_ecomly/core/extensions/context_extensions.dart';
import 'package:dbestech_ecomly/core/res/styles/colours.dart';
import 'package:dbestech_ecomly/core/res/styles/text.dart';
import 'package:flutter/material.dart';

abstract class CoreUtils {
  const CoreUtils();

  static void showSnackBar(
    BuildContext context, {
    required String message,
    Color? backgroundColour,
  }) {
    postFrameCall(() {
      final snackBar = SnackBar(
        backgroundColor: backgroundColour ?? Colours.lightThemePrimaryColour,
        content: Text(
          message,
          style: TextStyles.paragraphSubTextRegular1,
        ),
      );
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(snackBar);
    });
  }

  static void postFrameCall(VoidCallback callback) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callback();
    });
  }

  static Color adaptiveColour(
    BuildContext context, {
    required Color lightModeColour,
    required Color darkModeColour,
  }) {
    return context.isDarkMode ? darkModeColour : lightModeColour;
  }
}
