

## Getting Started

Start by adding the library as a dependency to your project.
```yaml
dependencies:
  a_dialog: <latest version>
```
Run the command get the dependency
```command
$ flutter pub get
```

Import it in your dart code, you can use
```dart
import 'package:a_dialog/enums/enums.dart';
import 'package:a_dialog/utils/a_dialog_controller.dart';
```

To display alert use <code>ADialog.show()</code> and define the <code>type</code> of alert.

## Video ✨

<video src="https://github.com/Mohamed-Nagdy/a_dialog/blob/main/screenshots/video.mov?raw=true" autoplay>
  Video
</video>

Here are some screenshots of the **ADialog** Dialogs.

<p align="center">
<img src="https://raw.githubusercontent.com/Mohamed-Nagdy/a_dialog/main/screenshots/info.png" width="49%">
<img src="https://raw.githubusercontent.com/Mohamed-Nagdy/a_dialog/main/screenshots/error.png" width="49%">
<img src="https://raw.githubusercontent.com/Mohamed-Nagdy/a_dialog/main/screenshots/loading.png" width="49%">
<img src="https://raw.githubusercontent.com/Mohamed-Nagdy/a_dialog/main/screenshots/notify.png" width="49%">
<img src="https://raw.githubusercontent.com/Mohamed-Nagdy/a_dialog/main/screenshots/success.png" width="49%">
<img src="https://raw.githubusercontent.com/Mohamed-Nagdy/a_dialog/main/screenshots/warning.png" width="49%">
</p>

*An instantly ready, full-featured alerts for development on any platform with flutter. Enabling you to complete projects and deploy quickly. With **ADialog**, you can display animated alert dialogs such as success, error, warning, Notify, loading or even a custom dialog.*

## Key Features

**Easy To Use**
> The alerts are very flexible and can be customized very easily. In ADialog, the ADialog.show() triggers the alert, which informs the user about the situations that need acknowledgment.

**Predefined Beautiful Alert Styles**
> Make use of the predefined alerts are very beautiful and can also be customized very easily. In ADialog there are 6 different types of alerts, they are Success, Error, Warning, Info, Notify & Loading.
  
**Predefined Title & Actions**
> In ADialog all the 6 different types of alerts have predefined title & actions matching the alert type. and also you can edit and customize it as you need

**Super Customizable**
> Build your custom alert with power of ADialog using the flutter widgets.

**Change Animation**
> Set your favorite animation by choosing from scale, rotate, upToDown, downToUp, leftToRight, rightToLeft.

**Set Overlay Tap to Dismiss**
> Control the alert's Barrier Dismissible Property by setting barrierDismissible to true or false.

**And Many More...**

<br>

<p align="center"><strong><em>ADialog Demo</em></strong></p>

```dart
ADialog.show(
    context,
    DialogType.success,
    animationType: AnimationType.rotate,
); // That's it to display an alert, use other properties to customize.
```

## Examples ⚡

There is a detailed example project in the <code>example</code> folder. You can directly run and play on it. There are code snippets from example project below.

> ### Success

  ```dart
  ADialog.show(
        context,
        DialogType.success,
        animationType: AnimationType.rotate,
    );
  ```

<br>

> ### Error

  ```dart
  ADialog.show(
        context,
        DialogType.error,
        animationType: AnimationType.rightToLeft,
    );
  ```

<br>

> ### Warning

  ```dart
  ADialog.show(
        context,
        DialogType.warning,
        animationType: AnimationType.downToUp,
    );
  ```   

<br>

> ### Info

  ```dart
  ADialog.show(
        context,
        DialogType.info,
        animationType: AnimationType.leftToRight,
    );
  ```   

<br>

> ### Notify

  ```dart
  ADialog.show(
        context,
        DialogType.notify,
        animationType: AnimationType.upToDown,
    );
  ``` 

<br>

> ### Loading

  ```dart
  ADialog.show(
        context,
        DialogType.loading,
        animationType: AnimationType.scale,
    );
  ``` 

<br>

> ### Custom

  ```dart
  ADialog.show(
        context,
        DialogType.custom,
        animationType: AnimationType.leftToRight,
        customDialog: const Center(
        child: Text('Hi I am a custom Dialog'),
        ),
    );
  
  ``` 


## Developed By
<a href="https://www.linkedin.com/in/mohamed-abdelbasit-4a45b4164/" target="_blank">
<kbd><img src="https://media-exp1.licdn.com/dms/image/C4D03AQEw3si-o9o70w/profile-displayphoto-shrink_400_400/0/1597756622299?e=1673481600&v=beta&t=55APBngo1f7P5OgW1loOwPgcJ2x9gda4YiLXw2WDKGA" alt="Mohamed Abdelbasit" height="75" width="75">
</kbd>
</a>

<p>
<strong>Mohamed Abdelbasit</strong><br>
<em>A Software Engineer And Moblie Application Developer Using Flutter Framework And also backend Developer Using NodeJS <a href="https://www.linkedin.com/in/mohamed-abdelbasit-4a45b4164/" target="_blank">
Read More
</a></em>
</p>
