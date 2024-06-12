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
        const SizedBox(
          height: 16,
        ),
        const CustomSimillerBooksListview(),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
