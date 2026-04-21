import 'package:flutter_bloc/flutter_bloc.dart';
import '../../backoffice/services/payroll_service.dart';
import '../../backoffice/domain/models/payroll.dart';
import 'base_state.dart';

class PayrollCubit extends Cubit<BaseState<PayrollOverview>> {
  final PayrollService service;

  PayrollCubit(this.service) : super(const BaseState<PayrollOverview>());

  Future<void> loadPayroll() async {
    emit(state.copyWith(loading: true));

    final result = await service.getPayrollOverview();

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
