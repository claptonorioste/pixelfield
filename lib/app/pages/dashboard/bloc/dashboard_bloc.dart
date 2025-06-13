import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixelfield/core/injection_container.dart';
import 'package:pixelfield/domain/entities/bottle.dart';
import 'package:pixelfield/domain/usecases/dashboard/bottles_usecase.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  StreamSubscription? _bottlesSubscription;
  DashboardBloc() : super(const _DashboardState()) {
    on<DashboardEvent>((event, emit) async {
      emit(state.copyWith(errorMessage: ''));
      if (event is _Started) {
        _bottlesSubscription = serviceLocator<BottlesUseCase>().listenToBottles(
          (bottles) {
            add(DashboardEvent.getBottles());
          },
        );
      }
      if (event is _TabChanged) {
        emit(state.copyWith(selectedIndex: event.index));
      }
      if (event is _GetBottles) {
        emit(state.copyWith(isLoading: true));
        final result = await serviceLocator<BottlesUseCase>().getBottles();
        result.fold(
          (failure) => emit(
            state.copyWith(isLoading: false, errorMessage: failure.message),
          ),
          (bottles) => emit(state.copyWith(bottles: bottles, isLoading: false)),
        );
      }
    });
  }

  @override
  Future<void> close() {
    _bottlesSubscription?.cancel();
    return super.close();
  }
}
