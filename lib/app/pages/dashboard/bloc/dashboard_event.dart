part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.started() = _Started;
  const factory DashboardEvent.getBottles() = _GetBottles;
  const factory DashboardEvent.tabChanged(int index) = _TabChanged;
}
