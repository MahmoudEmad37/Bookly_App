import 'package:bookly/features/home/presentation/pages/book_details_page.dart';
import 'package:bookly/features/home/presentation/pages/home_page.dart';
import 'package:bookly/features/search/presentation/page/search_page.dart';
import 'package:bookly/features/splash/presentation/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homePage = '/homePage';
  static const bookDetailsPage = '/bookDetailsPage';
  static const searchPage = '/searchPage';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: searchPage,
        builder: (context, state) => const SearchPage(),
      ),
      GoRoute(
        path: homePage,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: bookDetailsPage,
        builder: (context, state) => const BookDetailsPage(),
      ),
    ],
  );
}
