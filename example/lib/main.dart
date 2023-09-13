import 'package:a_dialog/enums/enums.dart';
import 'package:a_dialog/utils/a_dialog_controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Test",
      home: TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Test ADialog")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                ADialog.show(
                  context,
                  DialogType.loading,
                  animationType: AnimationType.scale,
                );
              },
              child: const Text("Loading Dialog"),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                ADialog.show(
                  context,
                  DialogType.success,
                  animationType: AnimationType.rotate,
                );
              },
              child: const Text("Success Dialog"),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                ADialog.show(
                  context,
                  DialogType.notify,
                  animationType: AnimationType.upToDown,
                );
              },
              child: const Text("Notify Dialog"),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                ADialog.show(
                  context,
                  DialogType.warning,
                  animationType: AnimationType.downToUp,
                );
              },
              child: const Text("Warining Dialog"),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                ADialog.show(
                  context,
                  DialogType.info,
                  animationType: AnimationType.leftToRight,
                );
              },
              child: const Text("Info Dialog"),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                ADialog.show(
                  context,
                  DialogType.error,
                  animationType: AnimationType.rightToLeft,
                );
              },
              child: const Text("Error Dialog"),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                ADialog.show(
                  context,
                  DialogType.custom,
                  animationType: AnimationType.leftToRight,
                  customDialog: const Center(
                    child: Text('Hi I am a custom Dialog'),
                  ),
                );
              },
              child: const Text("CustomDialog"),
            ),
          ),
        ],
      ),
    );
  }
}
