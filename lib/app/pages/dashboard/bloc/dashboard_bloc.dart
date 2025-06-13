import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixelfield/core/injection_container.dart';
import 'package:pixelfield/domain/entities/bottle.dart';
import 'package:pixelfield/domain/repositories/bottle_repository.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(const _DashboardState()) {
    on<DashboardEvent>((event, emit) async {
      if (event is _Started) {
        add(DashboardEvent.getBottles());
      }
      if (event is _TabChanged) {
        emit(state.copyWith(selectedIndex: event.index));
      }
      if (event is _GetBottles) {
        emit(state.copyWith(isLoading: true));
        final result = await serviceLocator<BottleRepository>().getBottles();

        result.fold(
          (failure) => emit(state.copyWith(isLoading: false)),
          (bottles) => emit(state.copyWith(bottles: bottles, isLoading: false)),
        );
      }
    });
  }
}
