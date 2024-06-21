import 'package:bookly/core/utils/app_dimensions.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_data_model.dart';

import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_rating_book.dart';
import 'package:flutter/material.dart';

import 'custom_book_actions.dart';

class BookDetailsSection extends StatelessWidget {
  final BookDataModel bookDataModel;
  const BookDetailsSection({
    super.key,
    required this.bookDataModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.width(context) * .28),
          child: CustomBookImage(
            imageUrl:
                bookDataModel.volumeInfo.imageLinksModels?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          bookDataModel.volumeInfo.title,
          style: AppStyles.textStyle30(context).copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: AppDimensions.h5(context),
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookDataModel.volumeInfo.authors[0],
            style: AppStyles.textStyle18(context).copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: AppDimensions.h18(context),
        ),
        CustomRatingBook(
          mainAxisAlignment: MainAxisAlignment.center,
          avarage: bookDataModel.volumeInfo.averageRating,
          count: bookDataModel.volumeInfo.ratingsCount,
        ),
        SizedBox(
          height: AppDimensions.h37(context),
        ),
        const CustomBookActions(),
      ],
    );
  }
}
