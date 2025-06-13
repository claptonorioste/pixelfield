import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:pixelfield/domain/entities/failure.dart';
import 'package:pixelfield/core/injection_container.dart';
import 'package:pixelfield/data/datasource/drift_datasource.dart';
import 'package:pixelfield/domain/entities/bottle.dart';
import 'package:pixelfield/domain/repositories/bottle_repository.dart';

class BottleDataRepoImpl extends BottleRepository {
  @override
  Future<Either<Failure, List<Bottle>>> getBottles() {
    return serviceLocator<DriftDataSourceImpl>().getBottles();
  }

  @override
  StreamSubscription listenToBottles(onData) {
    return serviceLocator<DriftDataSourceImpl>().listenToBottles(onData);
  }
}
