import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wakeup_web/utils/res/my_text.dart';
import 'package:wakeup_web/utils/res/snackbar/debouching.dart';

final AppDebouncer _debouncer = AppDebouncer(milliseconds: 500);

enum SnackbarType { success, error, warning, info }

class AppSnackBar {
  static void showSnackbar({
    required BuildContext context,
    required String title,
    String message = '',
    SnackbarType type = SnackbarType.success, // Default type is success
  }) {
    final width = MediaQuery.sizeOf(context).width;

    // Determine the color and icon based on the type
    Color getColor(SnackbarType type) {
      switch (type) {
        case SnackbarType.error:
          return Colors.red;
        case SnackbarType.warning:
          return Colors.orange;
        case SnackbarType.info:
          return Colors.blue;
        default: // Success
          return Colors.green;
      }
    }

    IconData getIcon(SnackbarType type) {
      switch (type) {
        case SnackbarType.error:
          return CupertinoIcons.xmark_circle;
        case SnackbarType.warning:
          return CupertinoIcons.exclamationmark_triangle;
        case SnackbarType.info:
          return CupertinoIcons.info;
        default: // Success
          return CupertinoIcons.checkmark_circle;
      }
    }

    final snackBar = SnackBar(
      content: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Leading Colored Bar
            Container(
              width: width * 0.028,
              // constraints: BoxConstraints(
              //   minHeight: ,
              // ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
                color: getColor(type),
              ),
            ),
            SizedBox(width: width * 0.03),
            // Icon
            Center(
              child: Icon(
                getIcon(type),
                color: getColor(type),
              ),
            ),
            SizedBox(width: width * 0.03),
            // Title and Message
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Title
                    MyTextPoppines(
                      text: title,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    // Message (conditionally rendered)
                    if (message.isNotEmpty) ...[
                      const SizedBox(height: 4), // Small gap
                      MyTextPoppines(
                        text: message,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      padding: EdgeInsets.zero,
      elevation: 6,
    );

    _debouncer.run(() {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
      // ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });
  }

  static void showToast({
    String message = 'Some thing went wrong. Please try again later.',
  }) {
    _debouncer.run(() {
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey.shade900,
        textColor: Colors.white,
        fontSize: 12,
      );
    });
  }
}
