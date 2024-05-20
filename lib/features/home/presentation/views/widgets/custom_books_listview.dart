import 'package:bookly/core/utils/app_dimensions.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBooksListView extends StatelessWidget {
  const CustomBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.height(context) * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(),
      ),
    );
  }
}
