part of 'dashboard_bloc.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(0) int selectedIndex,
    @Default([]) List<Bottle> bottles,
    @Default(false) bool isLoading,
  }) = _DashboardState;
}
