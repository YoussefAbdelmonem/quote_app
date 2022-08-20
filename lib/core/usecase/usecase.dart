

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:quotes/core/error/failure.dart';

abstract class UseCase<type , parameter>

{
  Future<Either<Failure,type>> call (parameter parameter);
}

class NoParameter extends Equatable
{
  @override
  List<Object?> get props => [];

}