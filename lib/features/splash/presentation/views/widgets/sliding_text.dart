import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slideAnimation,
  });

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: const Text(
        'Reed free books',
        textAlign: TextAlign.center,
      ),
    );
  }
}
