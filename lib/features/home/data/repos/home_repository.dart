import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class HomeReopsitory {
  Future<Either<Failures, BookModel>> getBooks();
  Future<Either<Failures, BookModel>> getNewestBooks();
  Future<Either<Failures, BookModel>> getSimillerBooks();
}
