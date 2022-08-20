

import 'package:dartz/dartz.dart';
import 'package:quotes/core/error/failure.dart';
import 'package:quotes/core/usecase/usecase.dart';
import 'package:quotes/features/random_quotes/domain/entities/quote.dart';
import 'package:quotes/features/random_quotes/domain/repositories/quote_repositories.dart';

class GetRandomQuote implements UseCase<Quote , NoParameter>
{
   final QuoteRepositories quoteRepositories ;

  GetRandomQuote({ required this.quoteRepositories});


  @override
  Future<Either<Failure, Quote>> call(NoParameter parameter) {
    throw UnimplementedError();
  }

}

// class LoadingParameter extends Equatable
// {
//   final String userName ;
//   final String password ;
//
//   const LoadingParameter({ required this.userName,required this.password});
//   @override
//   List<Object?> get props => [userName,password];
//
// }