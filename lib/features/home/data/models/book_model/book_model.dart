import 'package:bookly/features/home/data/models/book_model/book_data_model.dart';
import 'package:equatable/equatable.dart';

class BookModel extends Equatable {
  final List<BookDataModel> items;

  const BookModel({required this.items});

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        items: List<BookDataModel>.from(
          json['items'].map(
            (e) => BookDataModel.fromJson(e),
          ),
        ),
      );

  @override
  List<Object?> get props => [items];
}
