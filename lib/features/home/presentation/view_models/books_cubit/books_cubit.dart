import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repository.dart';
import 'package:equatable/equatable.dart';

part 'books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  BooksCubit(this.homeReopsitory) : super(BooksInitial());

  final HomeReopsitory homeReopsitory;

  Future getBooks() async {
    emit(BooksLoading());
    var result = await homeReopsitory.getBooks();
    return result.fold((failure) {
      emit(BooksError(failure.errorMessage));
    }, (books) {
      emit(BooksSuccess(books));
    });
  }
}
