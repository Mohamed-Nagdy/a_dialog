import 'package:flutter/material.dart';
import '../managers/assets_manager.dart';
import '../managers/strings.dart';

class DialogContainer extends StatelessWidget {
  final Color color;
  final String image;
  final String bigHeader;
  final String headerText;
  final String bodyText;
  final String closeButtonText;
  final String okButtonText;
  final bool isNotifyDialog;
  final Widget? centerTitleWidget;
  final Widget? centerBodyWidget;
  final Widget? okButtonWidget;
  final Widget? cancelButtonWidget;
  final Function? onOkButtonPressed;
  final Function? onCloseButtonPressed;

  const DialogContainer({
    Key? key,
    this.color = Colors.blue,
    this.image = AssetsManager.infoImage,
    this.bigHeader = StringsManager.infoDialog,
    this.headerText = StringsManager.headerText,
    this.bodyText = StringsManager.bodyText,
    this.closeButtonText = StringsManager.closeButtonText,
    this.isNotifyDialog = false,
    this.okButtonText = StringsManager.okButtonText,
    this.centerBodyWidget,
    this.centerTitleWidget,
    this.onOkButtonPressed,
    this.onCloseButtonPressed,
    this.okButtonWidget,
    this.cancelButtonWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          // header of the dialog which contains the image and big title
          Expanded(
            child: LayoutBuilder(
              builder: (context, con) {
                return Container(
                  width: con.maxWidth,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // the image of the dialog
                      Center(
                        child: Image.asset(
                          image,
                          width: 100,
                          height: 100,
                        ),
                      ),

                      // the big header text
                      Text(
                        bigHeader,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          height: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // the body of the dialog which contains the title and the body
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  // the title or head of the body section
                  // if the title widget not passed we show our widget and take the header title
                  if (centerTitleWidget == null)
                    Text(
                      headerText,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  // if the title widget passed we just show it
                  if (centerTitleWidget != null) centerTitleWidget!,
                  const SizedBox(
                    height: 10,
                  ),

                  // the text of the body if the center body not passed as widget
                  // we show our body and take the body text
                  if (centerBodyWidget == null)
                    Text(
                      bodyText,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),

                  // if the body widget passed we just show it
                  if (centerBodyWidget != null) centerBodyWidget!,
                ],
              ),
            ),
          ),

          // the bottom section which contains the buttons
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                // show our button if it's a notify dialog
                // and also the ok button not passed
                if (isNotifyDialog && okButtonWidget == null)
                  OutlinedButton(
                    onPressed: onOkButtonPressed == null
                        ? null
                        : () => onOkButtonPressed,
                    child: Text(okButtonText),
                  ),

                // if it's notify dialog and also ok button is passed
                // we sho the ok button
                if (isNotifyDialog && okButtonWidget != null) okButtonWidget!,

                const SizedBox(
                  width: 20,
                ),

                // if cancel button is not passed we show our text button
                if (cancelButtonWidget == null)
                  TextButton(
                    onPressed: onCloseButtonPressed == null
                        ? () {
                            Navigator.pop(context);
                          }
                        : () => onCloseButtonPressed,
                    child: Text(closeButtonText),
                  ),

                // if cancel button passed we show it and hide our button
                if (cancelButtonWidget != null) cancelButtonWidget!,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
