import '../data/http/app_http_dio.dart';
import '../domain/either/either.dart';
import '../domain/models/attendance.dart';

class AttendanceService {
  final AppHttpDio http;

  AttendanceService(this.http);

  ApiResponse<AttendanceOverview> getAttendance() async {
    final json = {
      'MONTH_DESCRIPTION': 'February 2026',
      'WORKED_COUNT': 18,
      'MISSED_COUNT': 2,
      'HOLIDAY_COUNT': 1,
      'DAILY_RECORDS': [
        {'DAY': 1, 'STATUS': 'worked', 'COLOR': 'primary'},
        {'DAY': 2, 'STATUS': 'worked', 'COLOR': 'primary'},
        {'DAY': 5, 'STATUS': 'holiday', 'COLOR': 'tertiary'},
        {'DAY': 6, 'STATUS': 'worked', 'COLOR': 'primary'},
        {'DAY': 7, 'STATUS': 'worked', 'COLOR': 'primary'},
        {'DAY': 8, 'STATUS': 'worked', 'COLOR': 'primary'},
        {'DAY': 9, 'STATUS': 'worked', 'COLOR': 'primary'},
        {'DAY': 12, 'STATUS': 'worked', 'COLOR': 'primary'},
        {'DAY': 13, 'STATUS': 'missed', 'COLOR': 'error'},
        {'DAY': 14, 'STATUS': 'worked', 'COLOR': 'primary'},
        {'DAY': 15, 'STATUS': 'worked', 'COLOR': 'primary'},
        {'DAY': 16, 'STATUS': 'worked', 'COLOR': 'primary'},
        {'DAY': 19, 'STATUS': 'worked', 'COLOR': 'primary'},
        {'DAY': 20, 'STATUS': 'worked', 'COLOR': 'primary'},
        {'DAY': 21, 'STATUS': 'worked', 'COLOR': 'primary'},
        {'DAY': 22, 'STATUS': 'missed', 'COLOR': 'error'},
        {'DAY': 23, 'STATUS': 'worked', 'COLOR': 'primary'},
        {'DAY': 26, 'STATUS': 'worked', 'COLOR': 'primary'},
        {'DAY': 27, 'STATUS': 'worked', 'COLOR': 'primary'},
        {'DAY': 28, 'STATUS': 'worked', 'COLOR': 'primary'},
        {'DAY': 29, 'STATUS': 'worked', 'COLOR': 'primary'},
        {'DAY': 30, 'STATUS': 'worked', 'COLOR': 'primary'},
      ],
      'INCIDENTS': [
        {
          'MONTH': 'SEP',
          'DAY': 13,
          'TITLE': 'Late Arrival',
          'DIFF': '22m',
          'TIME_RANGE': '09:00 AM → 09:22 AM',
        },
        {
          'MONTH': 'SEP',
          'DAY': 22,
          'TITLE': 'Late Arrival',
          'DIFF': '18m',
          'TIME_RANGE': '09:00 AM → 09:18 AM',
        },
      ],
    };

    try {
      final model = AttendanceOverview.fromJson(json);
      return Either.success(model);
    } catch (e) {
      return Either.failure('Error parsing attendance data: $e');
    }
  }
}
