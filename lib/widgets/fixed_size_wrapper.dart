// lib/widgets/fixed_size_wrapper.dart
import 'package:flutter/material.dart';

class FixedSizeWrapper extends StatelessWidget {
  final Widget child;

  FixedSizeWrapper({required this.child});

  @override
  Widget build(BuildContext context) {
    final double fixedWidth = 360.0;
    final double fixedHeight = 640.0;

    return Center(
      child: Container(
        width: fixedWidth,
        height: fixedHeight,
        child: MediaQuery(
          data: MediaQuery.of(context).copyWith(
            size: Size(fixedWidth, fixedHeight),
          ),
          child: child,
        ),
      ),
    );
  }
}
