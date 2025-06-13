import 'package:dartz/dartz.dart';
import 'package:pixelfield/domain/entities/failure.dart';

abstract class SignInRepository {
  Future<Either<Failure, void>> signIn(String email, String password);
}
