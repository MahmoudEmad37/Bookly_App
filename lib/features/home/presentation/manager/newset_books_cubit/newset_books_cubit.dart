import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/usecases/fetch_newest_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.newestdBooksUseCase) : super(NewsetBooksInitial());

  final FetchNewestdBooksUseCase newestdBooksUseCase;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoading());
    var result = await newestdBooksUseCase.call();

    result.fold((failure) {
      emit(NewsetBooksFailure(failure.message));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}
