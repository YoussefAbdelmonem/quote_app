import 'package:quotes/features/random_quotes/data/models/quote_model.dart';

abstract  class GetRandomQuoteLocalDataSource
{
  Future<QuoteModel> getLastRandomQuote();
  Future<void>cacheQuote(QuoteModel quoteModel);
}