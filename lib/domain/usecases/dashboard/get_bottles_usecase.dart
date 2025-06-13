import 'package:dartz/dartz.dart';
import 'package:pixelfield/core/failure.dart';
import 'package:pixelfield/core/injection_container.dart';
import 'package:pixelfield/domain/entities/bottle.dart';
import 'package:pixelfield/domain/repositories/bottle_repository.dart';

class GetBottlesUseCase {
  Future<Either<Failure, List<Bottle>>> getBottles({bool? triggerError}) async {
    try {
      return serviceLocator<BottleRepository>().getBottles();
    } on Exception catch (e) {
      return Left(ErrorMessage(e.toString()));
    }
  }
}
