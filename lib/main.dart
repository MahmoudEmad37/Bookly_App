import 'package:bookly/core/resourses/color_manager.dart';
import 'package:bookly/core/resourses/constants_manager.dart';
import 'package:bookly/core/resourses/routes_manager.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/usecases/fetch_featured_books_usecase.dart';
import 'package:bookly/features/home/domain/usecases/fetch_newest_books_use_case.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initDi();

  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());

  await Hive.openBox<BookEntity>(AppConstants.kFeaturedBox);
  await Hive.openBox<BookEntity>(AppConstants.kNewestBox);

  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(getIt.get<FetchFeaturedBooksUseCase>());
          },
        ),
        BlocProvider(
          create: (context) {
            return NewsetBooksCubit(getIt.get<FetchNewestdBooksUseCase>());
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColor.primaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
