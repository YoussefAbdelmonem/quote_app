import 'package:dartz/dartz.dart';
import 'package:quotes/core/error/exception.dart';
import 'package:quotes/core/error/failure.dart';
import 'package:quotes/core/network/network_info.dart';
import 'package:quotes/features/random_quotes/data/datasources/random_quote_local_data_source.dart';
import 'package:quotes/features/random_quotes/data/datasources/random_remote_date_source.dart';
import 'package:quotes/features/random_quotes/domain/entities/quote.dart';
import 'package:quotes/features/random_quotes/domain/repositories/quote_repositories.dart';

class QuoteRepositoriesImp extends QuoteRepositories
{

  final NetworkInfo networkInfo ;
  final GetRandomQuoteRemoteDataSource randomQuoteRemoteDataSource;
  final GetRandomQuoteLocalDataSource localDataSource;

  QuoteRepositoriesImp(
      {required this.networkInfo,
        required this.randomQuoteRemoteDataSource,
        required this.localDataSource});
  @override
  Future<Either<Failure, Quote>> getRandomQuote()async {

    if ( await networkInfo.isConnected)
    {
     try
     {
       final remoteRandomQuote =
       await randomQuoteRemoteDataSource.getRandomQuote() ;

     //  GetRandomQuoteLocalDataSource.cacheQuote(remoteRandomQuote);
       return Right(remoteRandomQuote);
     } on ServerException
     {
       return Left(ServerFailure());
     }

    }
    else
      {
        try
        {
          final cacheRandomQuote = await localDataSource.getLastRandomQuote() ;

          return Right(cacheRandomQuote);
        } on CacheException
        {
          return Left(ServerFailure());
        }
      }

  }

}