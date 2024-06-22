import 'package:bookly/core/utils/app_dimensions.dart';
import 'package:bookly/features/home/presentation/view_models/similler_books_cubit/similler_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error.dart';
import '../../../../../core/widgets/custom_loading.dart';

class CustomSimillerBooksListview extends StatelessWidget {
  const CustomSimillerBooksListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.height(context) * .17,
      child: BlocBuilder<SimillerBooksCubit, SimillerBooksState>(
        builder: (context, state) {
          if (state is SimillerBooksSuccess) {
            return ListView.builder(
                itemCount: state.books.items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CustomBookImage(
                    imageUrl: state.books.items[index].volumeInfo
                            .imageLinksModels?.thumbnail ??
                        '',
                  );
                });
          } else if (state is SimillerBooksError) {
            return CustomError(
              errMessage: state.errMessage,
            );
          } else {
            return const CustomLoading();
          }

          // return ListView.builder(
          //   scrollDirection: Axis.horizontal,
          //   itemBuilder: (context, index) => const CustomBookImage(
          //     imageUrl: '',
          //   ),
          // );
        },
      ),
    );
  }
}
