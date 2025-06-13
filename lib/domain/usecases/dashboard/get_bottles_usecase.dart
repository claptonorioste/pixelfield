import 'package:dartz/dartz.dart';
import 'package:pixelfield/core/failure.dart';
import 'package:pixelfield/core/injection_container.dart';
import 'package:pixelfield/domain/entities/bottle.dart';
import 'package:pixelfield/domain/repositories/bottle_repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class GetBottlesUseCase {
  Future<Either<Failure, List<Bottle>>> getBottles({bool? triggerError}) async {
    try {
      final connectivity = await Connectivity().checkConnectivity();
      if (connectivity.contains(ConnectivityResult.none)) {
        return Left(ErrorMessage('No internet connection'));
      }
      return serviceLocator<BottleRepository>().getBottles();
    } on Exception catch (e) {
      return Left(ErrorMessage(e.toString()));
    }
  }
}
