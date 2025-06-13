import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:pixelfield/core/failure.dart';
import 'package:pixelfield/data/drift/drift_database.dart';
import 'package:pixelfield/domain/entities/bottle.dart';
import 'package:pixelfield/domain/repositories/bottle_repository.dart';

class DriftDataSourceImpl implements BottleRepository {
  @override
  Future<Either<Failure, List<Bottle>>> getBottles() async {
    try {
      List<Bottle> bottlesResult = [];
      await Future.delayed(const Duration(seconds: 1));

      List<CollectionData> bottles = await appDb.select(appDb.collection).get();
      for (var bottle in bottles) {
        bottlesResult.add(Bottle.fromJson(bottle.toJson()));
      }
      return Right(bottlesResult);
    } catch (e) {
      return Left(ErrorMessage(e.toString()));
    }
  }

  @override
  StreamSubscription listenToBottles(onData) {
    return appDb.collection.select().watch().listen(onData);
  }
}
