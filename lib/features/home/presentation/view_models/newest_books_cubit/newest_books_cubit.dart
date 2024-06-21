import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repository.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  final HomeReopsitory homeRepository;
  NewestBooksCubit(this.homeRepository) : super(NewestBooksInitial());

  Future getNewestBooks() async {
    var result = await homeRepository.getNewestBooks();

    return result.fold((failure) {
      emit(NewestBooksError(failure.errorMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
