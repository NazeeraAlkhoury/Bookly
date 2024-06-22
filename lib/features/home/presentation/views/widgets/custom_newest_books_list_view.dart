import 'package:bookly/features/home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_newest_books_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error.dart';
import '../../../../../core/widgets/custom_loading.dart';

class CustomNewestBooksListView extends StatelessWidget {
  const CustomNewestBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            itemCount: state.books.items.length,
            itemBuilder: (context, index) => CustomNewestBooksItem(
              bookDataModel: state.books.items[index],
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          );
        } else if (state is NewestBooksError) {
          return SizedBox(
            height: 200,
            child: CustomError(
              errMessage: state.errMessage,
            ),
          );
        } else {
          return const SizedBox(height: 250, child: CustomLoading());
        }
      },
    );
  }
}
