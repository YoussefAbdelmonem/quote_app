import 'package:quotes/features/random_quotes/data/models/quote_model.dart';

abstract class GetRandomQuoteRemoteDataSource
{
  Future<QuoteModel> getRandomQuote();
}