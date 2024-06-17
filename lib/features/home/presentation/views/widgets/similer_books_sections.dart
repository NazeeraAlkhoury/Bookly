import 'package:bookly/core/utils/app_dimensions.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_similler_book_listview.dart';
import 'package:flutter/material.dart';

class SimillerBooksSection extends StatelessWidget {
  const SimillerBooksSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: AppStyles.textStyle14(context).copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: AppDimensions.h16(context),
        ),
        const CustomSimillerBooksListview(),
        SizedBox(height: AppDimensions.h37(context)),
      ],
    );
  }
}
