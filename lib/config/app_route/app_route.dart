
import 'package:quotes/features/favorite_quotes/presentation/screens/favorite_screen.dart';
import 'package:quotes/features/random_quotes/presentation/screens/quotes_screen.dart';

class Routes
{
  static const String initialRoute = '/';

  static const String favoriteQuoteRoute = '/favorite Screen';
}

final routes =
{
  Routes.initialRoute:(context)=>const QuotesScreen(),
  Routes.favoriteQuoteRoute: (context)=>const FavoriteScreen(),
};