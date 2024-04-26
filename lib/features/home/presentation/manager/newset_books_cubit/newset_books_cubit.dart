import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/usecases/fetch_newest_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.newestdBooksUseCase) : super(NewsetBooksInitial());

  final FetchNewestdBooksUseCase newestdBooksUseCase;

  Future<void> fetchNewsetBooks({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(NewsetBooksLoading());
    } else {
      emit(NewsetBooksPaginationLoading());
    }
    var result = await newestdBooksUseCase.call(pageNumber);

    result.fold((failure) {
      if (pageNumber == 0) {
        emit(NewsetBooksFailure(failure.message));
      } else {
        emit(NewsetBooksPaginationFailure(failure.message));
      }
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}
