import 'package:flutter/widgets.dart';
import 'package:vector_math/vector_math.dart' as vectormath;

/// the animation for the dialog
/// we will set the scale animation as default animation
class DialogAnimations {

  static double getCurvedValue(animation){
    return Curves.easeInOutCirc.transform(animation.value) - 1.0;
  }

  /// scale the dialog from zero size to the max height and width
  static Transform scaleDialog({

    /// the child
    required Widget child,

    /// the animation as double
    required Animation<double> animation,
  }) {
    // scale the animation as the value from 0 to 1
    return Transform.scale(
      scale: animation.value,
      child: Opacity(
        opacity: animation.value,
        child: child,
      ),
    );
  }

  /// rotate dialog 360 degree animation
  static Transform rotateDialog({

    /// the child
    required Widget child,

    /// the animation as double
    required Animation<double> animation,
  }) {

    // rotate the child
    return Transform.rotate(
      // using vector math library to get the angle as 360 degree and
      // convert it to radian
      angle: vectormath.radians(animation.value * 360),
      child: Opacity(
        opacity: animation.value,
        child: child,
      ),
    );
  }


  /// animate the dialog from up to down
  static Transform upToDown({

    /// the child
    required Widget child,

    /// the animation as double
    required Animation<double> animation,
  }) {

    return Transform(
      // define the matrix 4 translation from our curve
      transform: Matrix4.translationValues(0.0, getCurvedValue(animation) * 200, 0.0),
      child: Opacity(
        opacity: animation.value,
        child: child,
      ),
    );
  }

  /// animate the dialog from bottom to up
  static Transform downToUp({

    /// the child
    required Widget child,

    /// the animation as double
    required Animation<double> animation,
  }) {
    return Transform(
      // define the matrix 4 translation from our curve
      transform: Matrix4.translationValues(0.0, getCurvedValue(animation) * -200, 0.0),
      child: Opacity(
        opacity: animation.value,
        child: child,
      ),
    );
  }

  /// animate the dialog from left to right
  static Transform leftToRight({

    /// the child
    required Widget child,

    /// the animation as double
    required Animation<double> animation,
  }) {

    return Transform(
      // define the matrix 4 translation from our curve
      transform: Matrix4.translationValues(getCurvedValue(animation) * 200, 0.0, 0.0),
      child: Opacity(
        opacity: animation.value,
        child: child,
      ),
    );
  }

  /// animate the dialog from right to left
  static Transform rightToLeft({

    /// the child
    required Widget child,

    /// the animation as double
    required Animation<double> animation,
  }) {
    return Transform(
      // define the matrix 4 translation from our curve
      transform: Matrix4.translationValues(getCurvedValue(animation) * -200, 0, 0),
      child: Opacity(
        opacity: animation.value,
        child: child,
      ),
    );
  }
}