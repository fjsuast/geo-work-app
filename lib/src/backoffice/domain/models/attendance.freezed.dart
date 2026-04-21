// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SingleAttendance _$SingleAttendanceFromJson(Map<String, dynamic> json) {
  return _SingleAttendance.fromJson(json);
}

/// @nodoc
mixin _$SingleAttendance {
  @JsonKey(name: 'DAY')
  int get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'STATUS')
  String get status => throw _privateConstructorUsedError; // worked, missed, holiday, none
  @JsonKey(name: 'COLOR')
  String get color => throw _privateConstructorUsedError;

  /// Serializes this SingleAttendance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SingleAttendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingleAttendanceCopyWith<SingleAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleAttendanceCopyWith<$Res> {
  factory $SingleAttendanceCopyWith(
    SingleAttendance value,
    $Res Function(SingleAttendance) then,
  ) = _$SingleAttendanceCopyWithImpl<$Res, SingleAttendance>;
  @useResult
  $Res call({
    @JsonKey(name: 'DAY') int day,
    @JsonKey(name: 'STATUS') String status,
    @JsonKey(name: 'COLOR') String color,
  });
}

/// @nodoc
class _$SingleAttendanceCopyWithImpl<$Res, $Val extends SingleAttendance>
    implements $SingleAttendanceCopyWith<$Res> {
  _$SingleAttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingleAttendance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? day = null, Object? status = null, Object? color = null}) {
    return _then(
      _value.copyWith(
            day: null == day
                ? _value.day
                : day // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            color: null == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SingleAttendanceImplCopyWith<$Res>
    implements $SingleAttendanceCopyWith<$Res> {
  factory _$$SingleAttendanceImplCopyWith(
    _$SingleAttendanceImpl value,
    $Res Function(_$SingleAttendanceImpl) then,
  ) = __$$SingleAttendanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'DAY') int day,
    @JsonKey(name: 'STATUS') String status,
    @JsonKey(name: 'COLOR') String color,
  });
}

/// @nodoc
class __$$SingleAttendanceImplCopyWithImpl<$Res>
    extends _$SingleAttendanceCopyWithImpl<$Res, _$SingleAttendanceImpl>
    implements _$$SingleAttendanceImplCopyWith<$Res> {
  __$$SingleAttendanceImplCopyWithImpl(
    _$SingleAttendanceImpl _value,
    $Res Function(_$SingleAttendanceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SingleAttendance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? day = null, Object? status = null, Object? color = null}) {
    return _then(
      _$SingleAttendanceImpl(
        day: null == day
            ? _value.day
            : day // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        color: null == color
            ? _value.color
            : color // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SingleAttendanceImpl implements _SingleAttendance {
  const _$SingleAttendanceImpl({
    @JsonKey(name: 'DAY') this.day = 0,
    @JsonKey(name: 'STATUS') this.status = 'worked',
    @JsonKey(name: 'COLOR') this.color = 'primary',
  });

  factory _$SingleAttendanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleAttendanceImplFromJson(json);

  @override
  @JsonKey(name: 'DAY')
  final int day;
  @override
  @JsonKey(name: 'STATUS')
  final String status;
  // worked, missed, holiday, none
  @override
  @JsonKey(name: 'COLOR')
  final String color;

  @override
  String toString() {
    return 'SingleAttendance(day: $day, status: $status, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleAttendanceImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, day, status, color);

  /// Create a copy of SingleAttendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleAttendanceImplCopyWith<_$SingleAttendanceImpl> get copyWith =>
      __$$SingleAttendanceImplCopyWithImpl<_$SingleAttendanceImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleAttendanceImplToJson(this);
  }
}

abstract class _SingleAttendance implements SingleAttendance {
  const factory _SingleAttendance({
    @JsonKey(name: 'DAY') final int day,
    @JsonKey(name: 'STATUS') final String status,
    @JsonKey(name: 'COLOR') final String color,
  }) = _$SingleAttendanceImpl;

  factory _SingleAttendance.fromJson(Map<String, dynamic> json) =
      _$SingleAttendanceImpl.fromJson;

  @override
  @JsonKey(name: 'DAY')
  int get day;
  @override
  @JsonKey(name: 'STATUS')
  String get status; // worked, missed, holiday, none
  @override
  @JsonKey(name: 'COLOR')
  String get color;

  /// Create a copy of SingleAttendance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingleAttendanceImplCopyWith<_$SingleAttendanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShiftIncident _$ShiftIncidentFromJson(Map<String, dynamic> json) {
  return _ShiftIncident.fromJson(json);
}

/// @nodoc
mixin _$ShiftIncident {
  @JsonKey(name: 'MONTH')
  String get month => throw _privateConstructorUsedError;
  @JsonKey(name: 'DAY')
  int get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'TITLE')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIFF')
  String get diff => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIME_RANGE')
  String get timeRange => throw _privateConstructorUsedError;

  /// Serializes this ShiftIncident to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShiftIncident
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShiftIncidentCopyWith<ShiftIncident> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftIncidentCopyWith<$Res> {
  factory $ShiftIncidentCopyWith(
    ShiftIncident value,
    $Res Function(ShiftIncident) then,
  ) = _$ShiftIncidentCopyWithImpl<$Res, ShiftIncident>;
  @useResult
  $Res call({
    @JsonKey(name: 'MONTH') String month,
    @JsonKey(name: 'DAY') int day,
    @JsonKey(name: 'TITLE') String title,
    @JsonKey(name: 'DIFF') String diff,
    @JsonKey(name: 'TIME_RANGE') String timeRange,
  });
}

/// @nodoc
class _$ShiftIncidentCopyWithImpl<$Res, $Val extends ShiftIncident>
    implements $ShiftIncidentCopyWith<$Res> {
  _$ShiftIncidentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShiftIncident
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? day = null,
    Object? title = null,
    Object? diff = null,
    Object? timeRange = null,
  }) {
    return _then(
      _value.copyWith(
            month: null == month
                ? _value.month
                : month // ignore: cast_nullable_to_non_nullable
                      as String,
            day: null == day
                ? _value.day
                : day // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            diff: null == diff
                ? _value.diff
                : diff // ignore: cast_nullable_to_non_nullable
                      as String,
            timeRange: null == timeRange
                ? _value.timeRange
                : timeRange // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShiftIncidentImplCopyWith<$Res>
    implements $ShiftIncidentCopyWith<$Res> {
  factory _$$ShiftIncidentImplCopyWith(
    _$ShiftIncidentImpl value,
    $Res Function(_$ShiftIncidentImpl) then,
  ) = __$$ShiftIncidentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'MONTH') String month,
    @JsonKey(name: 'DAY') int day,
    @JsonKey(name: 'TITLE') String title,
    @JsonKey(name: 'DIFF') String diff,
    @JsonKey(name: 'TIME_RANGE') String timeRange,
  });
}

/// @nodoc
class __$$ShiftIncidentImplCopyWithImpl<$Res>
    extends _$ShiftIncidentCopyWithImpl<$Res, _$ShiftIncidentImpl>
    implements _$$ShiftIncidentImplCopyWith<$Res> {
  __$$ShiftIncidentImplCopyWithImpl(
    _$ShiftIncidentImpl _value,
    $Res Function(_$ShiftIncidentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShiftIncident
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? day = null,
    Object? title = null,
    Object? diff = null,
    Object? timeRange = null,
  }) {
    return _then(
      _$ShiftIncidentImpl(
        month: null == month
            ? _value.month
            : month // ignore: cast_nullable_to_non_nullable
                  as String,
        day: null == day
            ? _value.day
            : day // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        diff: null == diff
            ? _value.diff
            : diff // ignore: cast_nullable_to_non_nullable
                  as String,
        timeRange: null == timeRange
            ? _value.timeRange
            : timeRange // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShiftIncidentImpl implements _ShiftIncident {
  const _$ShiftIncidentImpl({
    @JsonKey(name: 'MONTH') this.month = 'SEP',
    @JsonKey(name: 'DAY') this.day = 0,
    @JsonKey(name: 'TITLE') this.title = 'Late Arrival',
    @JsonKey(name: 'DIFF') this.diff = '',
    @JsonKey(name: 'TIME_RANGE') this.timeRange = '',
  });

  factory _$ShiftIncidentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShiftIncidentImplFromJson(json);

  @override
  @JsonKey(name: 'MONTH')
  final String month;
  @override
  @JsonKey(name: 'DAY')
  final int day;
  @override
  @JsonKey(name: 'TITLE')
  final String title;
  @override
  @JsonKey(name: 'DIFF')
  final String diff;
  @override
  @JsonKey(name: 'TIME_RANGE')
  final String timeRange;

  @override
  String toString() {
    return 'ShiftIncident(month: $month, day: $day, title: $title, diff: $diff, timeRange: $timeRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftIncidentImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.diff, diff) || other.diff == diff) &&
            (identical(other.timeRange, timeRange) ||
                other.timeRange == timeRange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, month, day, title, diff, timeRange);

  /// Create a copy of ShiftIncident
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftIncidentImplCopyWith<_$ShiftIncidentImpl> get copyWith =>
      __$$ShiftIncidentImplCopyWithImpl<_$ShiftIncidentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShiftIncidentImplToJson(this);
  }
}

abstract class _ShiftIncident implements ShiftIncident {
  const factory _ShiftIncident({
    @JsonKey(name: 'MONTH') final String month,
    @JsonKey(name: 'DAY') final int day,
    @JsonKey(name: 'TITLE') final String title,
    @JsonKey(name: 'DIFF') final String diff,
    @JsonKey(name: 'TIME_RANGE') final String timeRange,
  }) = _$ShiftIncidentImpl;

  factory _ShiftIncident.fromJson(Map<String, dynamic> json) =
      _$ShiftIncidentImpl.fromJson;

  @override
  @JsonKey(name: 'MONTH')
  String get month;
  @override
  @JsonKey(name: 'DAY')
  int get day;
  @override
  @JsonKey(name: 'TITLE')
  String get title;
  @override
  @JsonKey(name: 'DIFF')
  String get diff;
  @override
  @JsonKey(name: 'TIME_RANGE')
  String get timeRange;

  /// Create a copy of ShiftIncident
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShiftIncidentImplCopyWith<_$ShiftIncidentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendanceOverview _$AttendanceOverviewFromJson(Map<String, dynamic> json) {
  return _AttendanceOverview.fromJson(json);
}

/// @nodoc
mixin _$AttendanceOverview {
  @JsonKey(name: 'MONTH_DESCRIPTION')
  String get monthDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'WORKED_COUNT')
  int get workedCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'MISSED_COUNT')
  int get missedCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'HOLIDAY_COUNT')
  int get holidayCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'DAILY_RECORDS')
  List<SingleAttendance> get dailyRecords => throw _privateConstructorUsedError;
  @JsonKey(name: 'INCIDENTS')
  List<ShiftIncident> get incidents => throw _privateConstructorUsedError;

  /// Serializes this AttendanceOverview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceOverview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceOverviewCopyWith<AttendanceOverview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceOverviewCopyWith<$Res> {
  factory $AttendanceOverviewCopyWith(
    AttendanceOverview value,
    $Res Function(AttendanceOverview) then,
  ) = _$AttendanceOverviewCopyWithImpl<$Res, AttendanceOverview>;
  @useResult
  $Res call({
    @JsonKey(name: 'MONTH_DESCRIPTION') String monthDescription,
    @JsonKey(name: 'WORKED_COUNT') int workedCount,
    @JsonKey(name: 'MISSED_COUNT') int missedCount,
    @JsonKey(name: 'HOLIDAY_COUNT') int holidayCount,
    @JsonKey(name: 'DAILY_RECORDS') List<SingleAttendance> dailyRecords,
    @JsonKey(name: 'INCIDENTS') List<ShiftIncident> incidents,
  });
}

/// @nodoc
class _$AttendanceOverviewCopyWithImpl<$Res, $Val extends AttendanceOverview>
    implements $AttendanceOverviewCopyWith<$Res> {
  _$AttendanceOverviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceOverview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monthDescription = null,
    Object? workedCount = null,
    Object? missedCount = null,
    Object? holidayCount = null,
    Object? dailyRecords = null,
    Object? incidents = null,
  }) {
    return _then(
      _value.copyWith(
            monthDescription: null == monthDescription
                ? _value.monthDescription
                : monthDescription // ignore: cast_nullable_to_non_nullable
                      as String,
            workedCount: null == workedCount
                ? _value.workedCount
                : workedCount // ignore: cast_nullable_to_non_nullable
                      as int,
            missedCount: null == missedCount
                ? _value.missedCount
                : missedCount // ignore: cast_nullable_to_non_nullable
                      as int,
            holidayCount: null == holidayCount
                ? _value.holidayCount
                : holidayCount // ignore: cast_nullable_to_non_nullable
                      as int,
            dailyRecords: null == dailyRecords
                ? _value.dailyRecords
                : dailyRecords // ignore: cast_nullable_to_non_nullable
                      as List<SingleAttendance>,
            incidents: null == incidents
                ? _value.incidents
                : incidents // ignore: cast_nullable_to_non_nullable
                      as List<ShiftIncident>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttendanceOverviewImplCopyWith<$Res>
    implements $AttendanceOverviewCopyWith<$Res> {
  factory _$$AttendanceOverviewImplCopyWith(
    _$AttendanceOverviewImpl value,
    $Res Function(_$AttendanceOverviewImpl) then,
  ) = __$$AttendanceOverviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'MONTH_DESCRIPTION') String monthDescription,
    @JsonKey(name: 'WORKED_COUNT') int workedCount,
    @JsonKey(name: 'MISSED_COUNT') int missedCount,
    @JsonKey(name: 'HOLIDAY_COUNT') int holidayCount,
    @JsonKey(name: 'DAILY_RECORDS') List<SingleAttendance> dailyRecords,
    @JsonKey(name: 'INCIDENTS') List<ShiftIncident> incidents,
  });
}

/// @nodoc
class __$$AttendanceOverviewImplCopyWithImpl<$Res>
    extends _$AttendanceOverviewCopyWithImpl<$Res, _$AttendanceOverviewImpl>
    implements _$$AttendanceOverviewImplCopyWith<$Res> {
  __$$AttendanceOverviewImplCopyWithImpl(
    _$AttendanceOverviewImpl _value,
    $Res Function(_$AttendanceOverviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceOverview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monthDescription = null,
    Object? workedCount = null,
    Object? missedCount = null,
    Object? holidayCount = null,
    Object? dailyRecords = null,
    Object? incidents = null,
  }) {
    return _then(
      _$AttendanceOverviewImpl(
        monthDescription: null == monthDescription
            ? _value.monthDescription
            : monthDescription // ignore: cast_nullable_to_non_nullable
                  as String,
        workedCount: null == workedCount
            ? _value.workedCount
            : workedCount // ignore: cast_nullable_to_non_nullable
                  as int,
        missedCount: null == missedCount
            ? _value.missedCount
            : missedCount // ignore: cast_nullable_to_non_nullable
                  as int,
        holidayCount: null == holidayCount
            ? _value.holidayCount
            : holidayCount // ignore: cast_nullable_to_non_nullable
                  as int,
        dailyRecords: null == dailyRecords
            ? _value._dailyRecords
            : dailyRecords // ignore: cast_nullable_to_non_nullable
                  as List<SingleAttendance>,
        incidents: null == incidents
            ? _value._incidents
            : incidents // ignore: cast_nullable_to_non_nullable
                  as List<ShiftIncident>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceOverviewImpl implements _AttendanceOverview {
  const _$AttendanceOverviewImpl({
    @JsonKey(name: 'MONTH_DESCRIPTION')
    this.monthDescription = 'September 2024',
    @JsonKey(name: 'WORKED_COUNT') this.workedCount = 0,
    @JsonKey(name: 'MISSED_COUNT') this.missedCount = 0,
    @JsonKey(name: 'HOLIDAY_COUNT') this.holidayCount = 0,
    @JsonKey(name: 'DAILY_RECORDS')
    final List<SingleAttendance> dailyRecords = const [],
    @JsonKey(name: 'INCIDENTS') final List<ShiftIncident> incidents = const [],
  }) : _dailyRecords = dailyRecords,
       _incidents = incidents;

  factory _$AttendanceOverviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceOverviewImplFromJson(json);

  @override
  @JsonKey(name: 'MONTH_DESCRIPTION')
  final String monthDescription;
  @override
  @JsonKey(name: 'WORKED_COUNT')
  final int workedCount;
  @override
  @JsonKey(name: 'MISSED_COUNT')
  final int missedCount;
  @override
  @JsonKey(name: 'HOLIDAY_COUNT')
  final int holidayCount;
  final List<SingleAttendance> _dailyRecords;
  @override
  @JsonKey(name: 'DAILY_RECORDS')
  List<SingleAttendance> get dailyRecords {
    if (_dailyRecords is EqualUnmodifiableListView) return _dailyRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyRecords);
  }

  final List<ShiftIncident> _incidents;
  @override
  @JsonKey(name: 'INCIDENTS')
  List<ShiftIncident> get incidents {
    if (_incidents is EqualUnmodifiableListView) return _incidents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incidents);
  }

  @override
  String toString() {
    return 'AttendanceOverview(monthDescription: $monthDescription, workedCount: $workedCount, missedCount: $missedCount, holidayCount: $holidayCount, dailyRecords: $dailyRecords, incidents: $incidents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceOverviewImpl &&
            (identical(other.monthDescription, monthDescription) ||
                other.monthDescription == monthDescription) &&
            (identical(other.workedCount, workedCount) ||
                other.workedCount == workedCount) &&
            (identical(other.missedCount, missedCount) ||
                other.missedCount == missedCount) &&
            (identical(other.holidayCount, holidayCount) ||
                other.holidayCount == holidayCount) &&
            const DeepCollectionEquality().equals(
              other._dailyRecords,
              _dailyRecords,
            ) &&
            const DeepCollectionEquality().equals(
              other._incidents,
              _incidents,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    monthDescription,
    workedCount,
    missedCount,
    holidayCount,
    const DeepCollectionEquality().hash(_dailyRecords),
    const DeepCollectionEquality().hash(_incidents),
  );

  /// Create a copy of AttendanceOverview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceOverviewImplCopyWith<_$AttendanceOverviewImpl> get copyWith =>
      __$$AttendanceOverviewImplCopyWithImpl<_$AttendanceOverviewImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceOverviewImplToJson(this);
  }
}

abstract class _AttendanceOverview implements AttendanceOverview {
  const factory _AttendanceOverview({
    @JsonKey(name: 'MONTH_DESCRIPTION') final String monthDescription,
    @JsonKey(name: 'WORKED_COUNT') final int workedCount,
    @JsonKey(name: 'MISSED_COUNT') final int missedCount,
    @JsonKey(name: 'HOLIDAY_COUNT') final int holidayCount,
    @JsonKey(name: 'DAILY_RECORDS') final List<SingleAttendance> dailyRecords,
    @JsonKey(name: 'INCIDENTS') final List<ShiftIncident> incidents,
  }) = _$AttendanceOverviewImpl;

  factory _AttendanceOverview.fromJson(Map<String, dynamic> json) =
      _$AttendanceOverviewImpl.fromJson;

  @override
  @JsonKey(name: 'MONTH_DESCRIPTION')
  String get monthDescription;
  @override
  @JsonKey(name: 'WORKED_COUNT')
  int get workedCount;
  @override
  @JsonKey(name: 'MISSED_COUNT')
  int get missedCount;
  @override
  @JsonKey(name: 'HOLIDAY_COUNT')
  int get holidayCount;
  @override
  @JsonKey(name: 'DAILY_RECORDS')
  List<SingleAttendance> get dailyRecords;
  @override
  @JsonKey(name: 'INCIDENTS')
  List<ShiftIncident> get incidents;

  /// Create a copy of AttendanceOverview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceOverviewImplCopyWith<_$AttendanceOverviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
