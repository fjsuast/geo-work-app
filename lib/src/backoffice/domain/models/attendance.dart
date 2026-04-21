// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance.freezed.dart';
part 'attendance.g.dart';

@freezed
class SingleAttendance with _$SingleAttendance {
  const factory SingleAttendance({
    @JsonKey(name: 'DAY') @Default(0) int day,
    @JsonKey(name: 'STATUS') @Default('worked') String status,
    @JsonKey(name: 'COLOR') @Default('primary') String color,
  }) = _SingleAttendance;

  factory SingleAttendance.fromJson(Map<String, dynamic> json) =>
      _$SingleAttendanceFromJson(json);
}

@freezed
class ShiftIncident with _$ShiftIncident {
  const factory ShiftIncident({
    @JsonKey(name: 'MONTH') @Default('SEP') String month,
    @JsonKey(name: 'DAY') @Default(0) int day,
    @JsonKey(name: 'TITLE') @Default('Late Arrival') String title,
    @JsonKey(name: 'DIFF') @Default('') String diff,
    @JsonKey(name: 'TIME_RANGE') @Default('') String timeRange,
  }) = _ShiftIncident;

  factory ShiftIncident.fromJson(Map<String, dynamic> json) =>
      _$ShiftIncidentFromJson(json);
}

@freezed
class AttendanceOverview with _$AttendanceOverview {
  const factory AttendanceOverview({
    @JsonKey(name: 'MONTH_DESCRIPTION') @Default('September 2024') String monthDescription,
    @JsonKey(name: 'WORKED_COUNT') @Default(0) int workedCount,
    @JsonKey(name: 'MISSED_COUNT') @Default(0) int missedCount,
    @JsonKey(name: 'HOLIDAY_COUNT') @Default(0) int holidayCount,
    @JsonKey(name: 'DAILY_RECORDS') @Default([]) List<SingleAttendance> dailyRecords,
    @JsonKey(name: 'INCIDENTS') @Default([]) List<ShiftIncident> incidents,
  }) = _AttendanceOverview;

  factory AttendanceOverview.fromJson(Map<String, dynamic> json) =>
      _$AttendanceOverviewFromJson(json);
}
