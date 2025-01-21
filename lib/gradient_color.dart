import 'package:flutter/material.dart';

import "./dice_roller.dart";

class MyGradient extends StatelessWidget {
  const MyGradient(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}

// THE OTHER METHOD FOR REUSABILITY OF COLORS

// class MyGradient extends StatelessWidget {
//   const MyGradient({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: const Center(child: StyledText(("Hello World"))),
//     );
//   }
// }
