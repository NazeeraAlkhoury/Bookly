import 'package:bookly/features/home/data/models/book_model/book_data_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  final BookDataModel bookDataModel;
  const BookDetailsView({super.key, required this.bookDataModel});

  @override
  Widget build(BuildContext context) {
    return BookDetailsViewBody(
      bookDataModel: bookDataModel,
    );
  }
}
