

import 'package:dartz/dartz.dart';
import 'package:quotes/core/error/failure.dart';
import 'package:quotes/features/random_quotes/domain/entities/quote.dart';

abstract class QuoteRepositories
{
  Future<Either<Failure, Quote>> getRandomQuote();
}