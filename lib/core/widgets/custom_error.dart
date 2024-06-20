import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  final String errMessage;
  const CustomError({
    super.key,
    required this.errMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errMessage));
  }
}
