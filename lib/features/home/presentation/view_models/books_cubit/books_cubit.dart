import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repository.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  BooksCubit(this.homeReopsitory) : super(BooksInitial());

  final HomeReopsitory homeReopsitory;

  Future getBooks() async {
    emit(BooksLoading());
    var result = await homeReopsitory.getBooks();
    result.fold(
      (failure) => emit(BooksError(failure.errMessage)),
      (books) => emit(
        BooksSuccess(books),
      ),
    );
  }
}
