import 'package:flutter/material.dart';

class CancelledWidget extends StatelessWidget {
  const CancelledWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Not Data Found',
        ),
      ),
    );
  }
}
