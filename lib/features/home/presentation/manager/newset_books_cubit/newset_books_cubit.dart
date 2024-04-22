import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/usecases/fetch_newest_books_use_case.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.fetchNewestdBooksUseCase) : super(NewsetBooksInitial());

  final FetchNewestdBooksUseCase fetchNewestdBooksUseCase;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoading());
    var result = await fetchNewestdBooksUseCase.call();

    result.fold((failure) {
      emit(NewsetBooksFailure(failure.message));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}
