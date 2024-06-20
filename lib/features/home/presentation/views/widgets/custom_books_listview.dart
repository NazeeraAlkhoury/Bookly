import 'package:bookly/core/utils/app_dimensions.dart';
import 'package:bookly/features/home/presentation/view_models/books_cubit/books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBooksListView extends StatelessWidget {
  const CustomBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.height(context) * .3,
      child: BlocBuilder<BooksCubit, BooksState>(builder: (context, state) {
        if (state is BooksSuccess) {
          return ListView.builder(
              itemCount: state.books.items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomBookImage(
                  imageUrl: state.books.items[index].volumeInfo.imageLinksModels
                          ?.thumbnail ??
                      '',
                );
              });
        } else if (state is BooksError) {
          print('======================================= ${state.errMessage}');
          return Center(child: Text(state.errMessage));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}
