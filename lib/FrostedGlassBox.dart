import 'dart:ui';
import 'package:flutter/material.dart';

class FrostedzGlassBox extends StatelessWidget {
  const FrostedzGlassBox(
      {super.key,
      required this.theHeight,
      required this.theWidth,
      required this.theChild});

  final theHeight;
  final theWidth;
  final theChild;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: theWidth,
        height: theHeight,
        color: Colors.transparent,
        child: Stack(
          children: [
            //blur effect,
            BackdropFilter(
              filter:ImageFilter.blur(
                sigmaX: 4.0,
                sigmaY: 4.0,
              ),
              child: Container(

              ), 
              ),
            //gradient effect,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white.withOpacity(0.13)),
                gradient: LinearGradient(
                  begin:Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.15),
                    Colors.white.withOpacity(0.05),
                  ]
                )
              ),
            )
            //child

          ],
        ),
      ),
    );
  }
}
