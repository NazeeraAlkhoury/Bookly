import 'package:bookly/features/home/data/models/book_model/book_model.dart';

abstract class HomeReopsitory {
  Future<List<BookModel>> getBooks();
}
