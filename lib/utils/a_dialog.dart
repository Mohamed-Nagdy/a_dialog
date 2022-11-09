import 'package:flutter/material.dart';
import '../enums/enums.dart';
import '../managers/assets_manager.dart';
import '../managers/strings.dart';
import 'dialog_container.dart';

class ADialogWidget extends StatelessWidget {
  final DialogType type;
  final Color? color;
  final String? bigHeader;
  final String? headerText;
  final String? bodyText;
  final String? buttonText;
  final Widget? customDialog;
  final double? height;
  final double? width;
  final String? okButtonText;
  final Widget? cancelButtonWidget;
  final Widget? centerTitleWidget;
  final Widget? okButtonWidget;
  final Widget? centerBodyWidget;
  final Function? onCloseButtonPressed;
  final Function? onOkButtonPressed;

  const ADialogWidget({
    Key? key,
    required this.type,
    this.color,
    this.bigHeader,
    this.headerText,
    this.bodyText,
    this.buttonText,
    this.customDialog,
    this.height,
    this.width,
    this.okButtonText,
    this.cancelButtonWidget,
    this.centerBodyWidget,
    this.centerTitleWidget,
    this.okButtonWidget,
    this.onCloseButtonPressed,
    this.onOkButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height ?? MediaQuery.of(context).size.height * 0.5,
        width: width ?? MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: getDialogType(type),
      ),
    );
  }

  Widget getDialogType(DialogType type) {
    switch (type) {
      case DialogType.info:
        return DialogContainer(
          color: color ?? Colors.blue,
          image: AssetsManager.infoImage,
          bigHeader: bigHeader ?? StringsManager.infoDialog,
          headerText: headerText ?? StringsManager.headerText,
          bodyText: bodyText ?? StringsManager.bodyText,
          closeButtonText: buttonText ?? StringsManager.closeButtonText,
          cancelButtonWidget: cancelButtonWidget,
          centerBodyWidget: centerBodyWidget,
          centerTitleWidget: centerTitleWidget,
          okButtonWidget: okButtonWidget,
          onCloseButtonPressed: onCloseButtonPressed,
          onOkButtonPressed: onOkButtonPressed,
        );
      case DialogType.warning:
        return DialogContainer(
          color: color ?? Colors.yellow,
          image: AssetsManager.warningImage,
          bigHeader: bigHeader ?? StringsManager.warningDialog,
          headerText: headerText ?? StringsManager.headerText,
          bodyText: bodyText ?? StringsManager.bodyText,
          closeButtonText: buttonText ?? StringsManager.closeButtonText,
          cancelButtonWidget: cancelButtonWidget,
          centerBodyWidget: centerBodyWidget,
          centerTitleWidget: centerTitleWidget,
          okButtonWidget: okButtonWidget,
          onCloseButtonPressed: onCloseButtonPressed,
          onOkButtonPressed: onOkButtonPressed,
        );
      case DialogType.error:
        return DialogContainer(
          color: color ?? Colors.red,
          image: AssetsManager.errorImage,
          bigHeader: bigHeader ?? StringsManager.errorDialog,
          headerText: headerText ?? StringsManager.headerText,
          bodyText: bodyText ?? StringsManager.bodyText,
          closeButtonText: buttonText ?? StringsManager.closeButtonText,
          cancelButtonWidget: cancelButtonWidget,
          centerBodyWidget: centerBodyWidget,
          centerTitleWidget: centerTitleWidget,
          okButtonWidget: okButtonWidget,
          onCloseButtonPressed: onCloseButtonPressed,
          onOkButtonPressed: onOkButtonPressed,
        );
      case DialogType.success:
        return DialogContainer(
          color: color ?? Colors.green,
          image: AssetsManager.successImage,
          bigHeader: bigHeader ?? StringsManager.successDialog,
          headerText: headerText ?? StringsManager.headerText,
          bodyText: bodyText ?? StringsManager.bodyText,
          closeButtonText: buttonText ?? StringsManager.closeButtonText,
          cancelButtonWidget: cancelButtonWidget,
          centerBodyWidget: centerBodyWidget,
          centerTitleWidget: centerTitleWidget,
          okButtonWidget: okButtonWidget,
          onCloseButtonPressed: onCloseButtonPressed,
          onOkButtonPressed: onOkButtonPressed,
        );
      case DialogType.loading:
        return DialogContainer(
          color: color ?? Colors.blue[800]!,
          image: AssetsManager.loadingImage,
          bigHeader: bigHeader ?? StringsManager.loadingDialog,
          headerText: headerText ?? StringsManager.headerText,
          bodyText: bodyText ?? StringsManager.bodyText,
          closeButtonText: buttonText ?? StringsManager.closeButtonText,
          cancelButtonWidget: cancelButtonWidget,
          centerBodyWidget: centerBodyWidget,
          centerTitleWidget: centerTitleWidget,
          okButtonWidget: okButtonWidget,
          onCloseButtonPressed: onCloseButtonPressed,
          onOkButtonPressed: onOkButtonPressed,
        );

      case DialogType.notify:
        return DialogContainer(
          okButtonText: okButtonText ?? StringsManager.okButtonText,
          isNotifyDialog: true,
          color: color ?? Colors.yellow[700]!,
          image: AssetsManager.notificationImage,
          bigHeader: bigHeader ?? StringsManager.notifyDialog,
          headerText: headerText ?? StringsManager.headerText,
          bodyText: bodyText ?? StringsManager.bodyText,
          closeButtonText: buttonText ?? StringsManager.closeButtonText,
          cancelButtonWidget: cancelButtonWidget,
          centerBodyWidget: centerBodyWidget,
          centerTitleWidget: centerTitleWidget,
          okButtonWidget: okButtonWidget,
          onCloseButtonPressed: onCloseButtonPressed,
          onOkButtonPressed: onOkButtonPressed,
        );
      case DialogType.custom:
        return customDialog == null
            ? Container()
            : Scaffold(
                body: customDialog,
                backgroundColor: Colors.transparent,
              );
    }
  }
}
