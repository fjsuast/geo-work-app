import '../data/http/app_http_dio.dart';
import '../domain/either/either.dart';
import '../domain/models/payroll.dart';

class PayrollService {
  final AppHttpDio http;

  PayrollService(this.http);

  ApiResponse<PayrollOverview> getPayrollOverview() async {
    // Mocking the http call
    // await Future.delayed(const Duration(milliseconds: 800));
    
    final json = {
      'NEXT_PAYDAY': 'Mar 31, 2024',
      'NEXT_PAYDAY_EST': r'$6,450.00',
      'YTD_NET_EARNINGS': r'$84,250.00',
      'RECENT_DISBURSEMENTS': [
        {'TITLE': 'March Mid-Month', 'SUBTITLE': 'Period: Mar 01 - Mar 15', 'AMOUNT': r'$6,450.00', 'STATUS': 'DEPOSITED'},
        {'TITLE': 'February End-of-Month', 'SUBTITLE': 'Period: Feb 16 - Feb 28', 'AMOUNT': r'$6,820.45', 'STATUS': 'DEPOSITED'},
        {'TITLE': 'Performance Bonus', 'SUBTITLE': 'Feb 15, 2024', 'AMOUNT': r'$12,000.00', 'STATUS': 'DEPOSITED'},
      ],
      'STATEMENT_OVERVIEW_MAR15': {
        'RECEIPT_ID': 'Receipt #7729-01',
        'DATE': 'Distributed March 15, 2024',
        'STATUS': 'PDF READY',
        'GROSS': r'$8,125.00',
        'FEDERAL_WITHHOLDING': r'-$1,120.00',
        'SOCIAL_SECURITY': r'-$450.00',
        'HEALTH_INSURANCE': r'-$105.00',
        'NET_PAY': r'$6,450.00',
      }
    };

    try {
      final model = PayrollOverview.fromJson(json);
      return Either.success(model);
    } catch (e) {
      return Either.failure('Error parsing payroll data: $e');
    }
  }
}
