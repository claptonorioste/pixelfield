import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:pixelfield/core/failure.dart';
import 'package:pixelfield/domain/entities/bottle.dart';

abstract class BottleRepository {
  Future<Either<Failure, List<Bottle>>> getBottles();
  StreamSubscription listenToBottles(onData);
}
