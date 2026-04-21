import 'package:flutter_bloc/flutter_bloc.dart';
import '../../backoffice/services/attendance_service.dart';
import '../../backoffice/domain/models/attendance.dart';
import 'base_state.dart';

class AttendanceCubit extends Cubit<BaseState<AttendanceOverview>> {
  final AttendanceService service;

  AttendanceCubit(this.service) : super(const BaseState<AttendanceOverview>());

  Future<void> loadAttendance() async {
    emit(state.copyWith(loading: true));

    final result = await service.getAttendance();

    result.when(
      failure: (error) {
        emit(state.copyWith(
          loading: false,
          error: error,
        ));
      },
      success: (data) {
        emit(state.copyWith(
          loading: false,
          data: data,
        ));
      },
    );
  }
}
