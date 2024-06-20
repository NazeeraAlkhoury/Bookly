import 'package:bookly/core/utils/app_dimensions.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class CustomSimillerBooksListview extends StatelessWidget {
  const CustomSimillerBooksListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.height(context) * .17,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CustomBookImage(
          imageUrl: '',
        ),
      ),
    );
  }
}
