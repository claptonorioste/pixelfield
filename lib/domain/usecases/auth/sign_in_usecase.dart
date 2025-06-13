import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:pixelfield/domain/entities/failure.dart';
import 'package:pixelfield/core/injection_container.dart';
import 'package:pixelfield/domain/repositories/sign_in_repositoty.dart';

abstract class SignInUsecase {
  Future<Either<Failure, void>> signIn(String email, String password) async {
    try {
      final connectivity = await Connectivity().checkConnectivity();
      if (connectivity.contains(ConnectivityResult.none)) {
        return Left(ErrorMessage('No internet connection'));
      }
      return serviceLocator<SignInRepository>().signIn(email, password);
    } on Exception catch (e) {
      return Left(ErrorMessage(e.toString()));
    }
  }
}
