import 'package:flutter/material.dart';

class FloatingActionButtonExample extends StatefulWidget {
  const FloatingActionButtonExample({super.key});

  @override
  State<FloatingActionButtonExample> createState() =>
      _FloatingActionButtonExampleState();
}

class _FloatingActionButtonExampleState
    extends State<FloatingActionButtonExample> {
  // The FAB's foregroundColor, backgroundColor, and shape
  static const List<(Color?, Color? background, ShapeBorder?)> customizations =
      <(Color?, Color?, ShapeBorder?)>[
        (null, null, null), // The FAB uses its default for null parameters.
        (null, Colors.green, null),
        (Colors.white, Colors.green, null),
        (Colors.white, Colors.green, CircleBorder()),
      ];
  int index = 0; // Selects the customization.

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          setState(() {
            index = (index + 1) % customizations.length;
          });
        },
        foregroundColor: customizations[index].$1,
        backgroundColor: customizations[index].$2,
        shape: customizations[index].$3,
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
