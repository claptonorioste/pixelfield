import 'package:pixelfield/data/datasource/drift_datasource.dart';
import 'package:pixelfield/data/repositories/data_bottle_repository.dart';
import 'package:pixelfield/domain/repositories/bottle_repository.dart';
import 'package:pixelfield/domain/usecases/dashboard/get_bottles_usecase.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  serviceLocator.registerFactory(() => BottlesUseCase());
  serviceLocator.registerFactory<BottleRepository>(() => BottleDataRepoImpl());
  serviceLocator.registerFactory(() => DriftDataSourceImpl());
}
