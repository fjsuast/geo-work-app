// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingleAttendanceImpl _$$SingleAttendanceImplFromJson(
  Map<String, dynamic> json,
) => _$SingleAttendanceImpl(
  day: (json['DAY'] as num?)?.toInt() ?? 0,
  status: json['STATUS'] as String? ?? 'worked',
  color: json['COLOR'] as String? ?? 'primary',
);

Map<String, dynamic> _$$SingleAttendanceImplToJson(
  _$SingleAttendanceImpl instance,
) => <String, dynamic>{
  'DAY': instance.day,
  'STATUS': instance.status,
  'COLOR': instance.color,
};

_$ShiftIncidentImpl _$$ShiftIncidentImplFromJson(Map<String, dynamic> json) =>
    _$ShiftIncidentImpl(
      month: json['MONTH'] as String? ?? 'SEP',
      day: (json['DAY'] as num?)?.toInt() ?? 0,
      title: json['TITLE'] as String? ?? 'Late Arrival',
      diff: json['DIFF'] as String? ?? '',
      timeRange: json['TIME_RANGE'] as String? ?? '',
    );

Map<String, dynamic> _$$ShiftIncidentImplToJson(_$ShiftIncidentImpl instance) =>
    <String, dynamic>{
      'MONTH': instance.month,
      'DAY': instance.day,
      'TITLE': instance.title,
      'DIFF': instance.diff,
      'TIME_RANGE': instance.timeRange,
    };

_$AttendanceOverviewImpl _$$AttendanceOverviewImplFromJson(
  Map<String, dynamic> json,
) => _$AttendanceOverviewImpl(
  monthDescription: json['MONTH_DESCRIPTION'] as String? ?? 'September 2024',
  workedCount: (json['WORKED_COUNT'] as num?)?.toInt() ?? 0,
  missedCount: (json['MISSED_COUNT'] as num?)?.toInt() ?? 0,
  holidayCount: (json['HOLIDAY_COUNT'] as num?)?.toInt() ?? 0,
  dailyRecords:
      (json['DAILY_RECORDS'] as List<dynamic>?)
          ?.map((e) => SingleAttendance.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  incidents:
      (json['INCIDENTS'] as List<dynamic>?)
          ?.map((e) => ShiftIncident.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$AttendanceOverviewImplToJson(
  _$AttendanceOverviewImpl instance,
) => <String, dynamic>{
  'MONTH_DESCRIPTION': instance.monthDescription,
  'WORKED_COUNT': instance.workedCount,
  'MISSED_COUNT': instance.missedCount,
  'HOLIDAY_COUNT': instance.holidayCount,
  'DAILY_RECORDS': instance.dailyRecords,
  'INCIDENTS': instance.incidents,
};
