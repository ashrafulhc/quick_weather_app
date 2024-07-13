import 'package:flutter/material.dart';

abstract class AppSnackBar {
  const AppSnackBar._();

  static const defaultPadding = EdgeInsets.all(16);
  static const defaultMargin = EdgeInsets.all(8);

  static Future<ScaffoldFeatureController> show(
    BuildContext context,
    String message, {
    required Color bgColor,
    required Color borderColor,
    required Widget icon,
    EdgeInsets padding = defaultPadding,
    EdgeInsets margin = defaultMargin,
    int durationInSeconds = 2,
    bool dismissPreviousSnackbar = true,
  }) async {
    if (dismissPreviousSnackbar) {
      hide(context);
    }

    final snackBar = SnackBar(
      margin: margin,
      content: Container(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: Border.all(
            color: borderColor,
          ),
          color: bgColor,
        ),
        child: Row(
          children: [
            icon,
            const SizedBox(width: 9),
            Expanded(
              child: Text(
                message,
              ),
            ),
          ],
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: durationInSeconds),
    );

    final scaffoldMessenger = ScaffoldMessenger.of(context);

    scaffoldMessenger.hideCurrentSnackBar();

    return scaffoldMessenger.showSnackBar(snackBar);
  }

  static Future<ScaffoldFeatureController> showSuccess(
    BuildContext context,
    String message, {
    Color? bgColor,
    Color? borderColor,
    Widget? icon,
    int? durationInSeconds,
    EdgeInsets padding = defaultPadding,
    EdgeInsets margin = defaultMargin,
    bool dismissPreviousSnackbar = true,
  }) async {
    return show(
      context,
      message,
      bgColor: bgColor ?? Colors.green.shade300,
      borderColor: borderColor ?? Colors.green.shade300,
      icon: icon ??
          const Icon(
            Icons.done,
            color: Colors.black,
          ),
      durationInSeconds: durationInSeconds ?? 2,
      padding: padding,
      dismissPreviousSnackbar: dismissPreviousSnackbar,
    );
  }

  static Future<ScaffoldFeatureController> showError(
    BuildContext context,
    String message, {
    Color? bgColor,
    Color? borderColor,
    Widget? icon,
    int? durationInSeconds,
    EdgeInsets padding = defaultPadding,
    EdgeInsets margin = defaultMargin,
    bool dismissPreviousSnackbar = true,
  }) async {
    return show(
      context,
      message,
      bgColor: bgColor ?? Colors.red.shade200,
      borderColor: borderColor ?? Colors.red.shade200,
      icon: icon ?? const Icon(Icons.error_outline, color: Colors.black),
      durationInSeconds: durationInSeconds ?? 2,
      padding: padding,
      margin: margin,
      dismissPreviousSnackbar: dismissPreviousSnackbar,
    );
  }

  static void hide(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }
}
