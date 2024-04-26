import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;
  const DotIndicator({super.key, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: isActive ? 8 : 8,
      width: isActive ? 8 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
