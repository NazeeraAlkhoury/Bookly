import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repository.dart';

part 'similler_books_state.dart';

class SimillerBooksCubit extends Cubit<SimillerBooksState> {
  SimillerBooksCubit(this.homeReopsitory) : super(SimillerBooksInitial());

  final HomeReopsitory homeReopsitory;

  Future getSimillerBooks() async {
    emit(SimillerBooksLoading());
    var result = await homeReopsitory.getSimillerBooks();

    return result.fold((failure) {
      emit(SimillerBooksError(failure.errorMessage));
    }, (books) {
      emit(SimillerBooksSuccess(books));
    });
  }
}
