import 'package:flutter/material.dart';
import '../animations/animations.dart';
import '../enums/enums.dart';
import 'a_dialog.dart';

class ADialog {
  static void show(
    BuildContext context,
    DialogType dialogType, {
    AnimationType animationType = AnimationType.scale,
    bool? barrierDismissible = true,
    String? barrierLabel = '',
    Duration? transitionDuration,
    Color? color,
    String? bigHeader,
    String? headerText,
    String? bodyText,
    String? buttonText,
    Widget? customDialog,
    double? height,
    double? width,
    String? okButtonText,
    Widget? cancelButtonWidget,
    Widget? centerBodyWidget,
    Widget? centerTitleWidget,
    Widget? okButtonWidget,
    Function? onCloseButtonPressed,
    Function? onOkButtonPressed,
  }) {
    showGeneralDialog(
      barrierColor: Colors.black.withOpacity(0.4),
      transitionBuilder: (context, a1, a2, widget) {
        switch (animationType) {
          case AnimationType.scale:
            return DialogAnimations.scaleDialog(child: widget, animation: a1);
          case AnimationType.rotate:
            return DialogAnimations.rotateDialog(child: widget, animation: a1);
          case AnimationType.upToDown:
            return DialogAnimations.upToDown(child: widget, animation: a1);
          case AnimationType.downToUp:
            return DialogAnimations.downToUp(child: widget, animation: a1);
          case AnimationType.leftToRight:
            return DialogAnimations.leftToRight(child: widget, animation: a1);
          case AnimationType.rightToLeft:
            return DialogAnimations.rightToLeft(child: widget, animation: a1);
        }
      },
      transitionDuration:
          transitionDuration ?? const Duration(milliseconds: 250),
      barrierLabel: barrierLabel,
      barrierDismissible: barrierDismissible!,
      context: context,
      pageBuilder: (context, animation1, animation2) {
        return ADialogWidget(
          type: dialogType,
          color: color,
          bigHeader: bigHeader,
          headerText: headerText,
          bodyText: bodyText,
          buttonText: buttonText,
          customDialog: customDialog,
          height: height,
          width: width,
          okButtonText: okButtonText,
          cancelButtonWidget: cancelButtonWidget,
          centerBodyWidget: centerBodyWidget,
          centerTitleWidget: centerTitleWidget,
          okButtonWidget: okButtonWidget,
          onCloseButtonPressed: onCloseButtonPressed,
          onOkButtonPressed: onOkButtonPressed,
        );
      },
    );
  }
}
