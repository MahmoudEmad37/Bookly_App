import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/usecases/usecase.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestdBooksUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo homeRepo;

  FetchNewestdBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([int param = 0]) async {
    return await homeRepo.fetchNewestBooks(
      pageNumber: param,
    );
  }
}
