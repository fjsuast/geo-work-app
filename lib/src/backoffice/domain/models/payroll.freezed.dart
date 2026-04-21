// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payroll.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PayStub _$PayStubFromJson(Map<String, dynamic> json) {
  return _PayStub.fromJson(json);
}

/// @nodoc
mixin _$PayStub {
  @JsonKey(name: 'TITLE')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'SUBTITLE')
  String get subtitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'AMOUNT')
  String get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'STATUS')
  String get status => throw _privateConstructorUsedError;

  /// Serializes this PayStub to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayStub
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayStubCopyWith<PayStub> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayStubCopyWith<$Res> {
  factory $PayStubCopyWith(PayStub value, $Res Function(PayStub) then) =
      _$PayStubCopyWithImpl<$Res, PayStub>;
  @useResult
  $Res call({
    @JsonKey(name: 'TITLE') String title,
    @JsonKey(name: 'SUBTITLE') String subtitle,
    @JsonKey(name: 'AMOUNT') String amount,
    @JsonKey(name: 'STATUS') String status,
  });
}

/// @nodoc
class _$PayStubCopyWithImpl<$Res, $Val extends PayStub>
    implements $PayStubCopyWith<$Res> {
  _$PayStubCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayStub
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? amount = null,
    Object? status = null,
  }) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            subtitle: null == subtitle
                ? _value.subtitle
                : subtitle // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PayStubImplCopyWith<$Res> implements $PayStubCopyWith<$Res> {
  factory _$$PayStubImplCopyWith(
    _$PayStubImpl value,
    $Res Function(_$PayStubImpl) then,
  ) = __$$PayStubImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'TITLE') String title,
    @JsonKey(name: 'SUBTITLE') String subtitle,
    @JsonKey(name: 'AMOUNT') String amount,
    @JsonKey(name: 'STATUS') String status,
  });
}

/// @nodoc
class __$$PayStubImplCopyWithImpl<$Res>
    extends _$PayStubCopyWithImpl<$Res, _$PayStubImpl>
    implements _$$PayStubImplCopyWith<$Res> {
  __$$PayStubImplCopyWithImpl(
    _$PayStubImpl _value,
    $Res Function(_$PayStubImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PayStub
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? amount = null,
    Object? status = null,
  }) {
    return _then(
      _$PayStubImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        subtitle: null == subtitle
            ? _value.subtitle
            : subtitle // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PayStubImpl implements _PayStub {
  const _$PayStubImpl({
    @JsonKey(name: 'TITLE') this.title = '',
    @JsonKey(name: 'SUBTITLE') this.subtitle = '',
    @JsonKey(name: 'AMOUNT') this.amount = '',
    @JsonKey(name: 'STATUS') this.status = 'DEPOSITED',
  });

  factory _$PayStubImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayStubImplFromJson(json);

  @override
  @JsonKey(name: 'TITLE')
  final String title;
  @override
  @JsonKey(name: 'SUBTITLE')
  final String subtitle;
  @override
  @JsonKey(name: 'AMOUNT')
  final String amount;
  @override
  @JsonKey(name: 'STATUS')
  final String status;

  @override
  String toString() {
    return 'PayStub(title: $title, subtitle: $subtitle, amount: $amount, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayStubImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, subtitle, amount, status);

  /// Create a copy of PayStub
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayStubImplCopyWith<_$PayStubImpl> get copyWith =>
      __$$PayStubImplCopyWithImpl<_$PayStubImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayStubImplToJson(this);
  }
}

abstract class _PayStub implements PayStub {
  const factory _PayStub({
    @JsonKey(name: 'TITLE') final String title,
    @JsonKey(name: 'SUBTITLE') final String subtitle,
    @JsonKey(name: 'AMOUNT') final String amount,
    @JsonKey(name: 'STATUS') final String status,
  }) = _$PayStubImpl;

  factory _PayStub.fromJson(Map<String, dynamic> json) = _$PayStubImpl.fromJson;

  @override
  @JsonKey(name: 'TITLE')
  String get title;
  @override
  @JsonKey(name: 'SUBTITLE')
  String get subtitle;
  @override
  @JsonKey(name: 'AMOUNT')
  String get amount;
  @override
  @JsonKey(name: 'STATUS')
  String get status;

  /// Create a copy of PayStub
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayStubImplCopyWith<_$PayStubImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReceiptDetail _$ReceiptDetailFromJson(Map<String, dynamic> json) {
  return _ReceiptDetail.fromJson(json);
}

/// @nodoc
mixin _$ReceiptDetail {
  @JsonKey(name: 'RECEIPT_ID')
  String get receiptId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DATE')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'STATUS')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'GROSS')
  String get gross => throw _privateConstructorUsedError;
  @JsonKey(name: 'FEDERAL_WITHHOLDING')
  String get federalWithholding => throw _privateConstructorUsedError;
  @JsonKey(name: 'SOCIAL_SECURITY')
  String get socialSecurity => throw _privateConstructorUsedError;
  @JsonKey(name: 'HEALTH_INSURANCE')
  String get healthInsurance => throw _privateConstructorUsedError;
  @JsonKey(name: 'NET_PAY')
  String get netPay => throw _privateConstructorUsedError;

  /// Serializes this ReceiptDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReceiptDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReceiptDetailCopyWith<ReceiptDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptDetailCopyWith<$Res> {
  factory $ReceiptDetailCopyWith(
    ReceiptDetail value,
    $Res Function(ReceiptDetail) then,
  ) = _$ReceiptDetailCopyWithImpl<$Res, ReceiptDetail>;
  @useResult
  $Res call({
    @JsonKey(name: 'RECEIPT_ID') String receiptId,
    @JsonKey(name: 'DATE') String date,
    @JsonKey(name: 'STATUS') String status,
    @JsonKey(name: 'GROSS') String gross,
    @JsonKey(name: 'FEDERAL_WITHHOLDING') String federalWithholding,
    @JsonKey(name: 'SOCIAL_SECURITY') String socialSecurity,
    @JsonKey(name: 'HEALTH_INSURANCE') String healthInsurance,
    @JsonKey(name: 'NET_PAY') String netPay,
  });
}

/// @nodoc
class _$ReceiptDetailCopyWithImpl<$Res, $Val extends ReceiptDetail>
    implements $ReceiptDetailCopyWith<$Res> {
  _$ReceiptDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReceiptDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptId = null,
    Object? date = null,
    Object? status = null,
    Object? gross = null,
    Object? federalWithholding = null,
    Object? socialSecurity = null,
    Object? healthInsurance = null,
    Object? netPay = null,
  }) {
    return _then(
      _value.copyWith(
            receiptId: null == receiptId
                ? _value.receiptId
                : receiptId // ignore: cast_nullable_to_non_nullable
                      as String,
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            gross: null == gross
                ? _value.gross
                : gross // ignore: cast_nullable_to_non_nullable
                      as String,
            federalWithholding: null == federalWithholding
                ? _value.federalWithholding
                : federalWithholding // ignore: cast_nullable_to_non_nullable
                      as String,
            socialSecurity: null == socialSecurity
                ? _value.socialSecurity
                : socialSecurity // ignore: cast_nullable_to_non_nullable
                      as String,
            healthInsurance: null == healthInsurance
                ? _value.healthInsurance
                : healthInsurance // ignore: cast_nullable_to_non_nullable
                      as String,
            netPay: null == netPay
                ? _value.netPay
                : netPay // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReceiptDetailImplCopyWith<$Res>
    implements $ReceiptDetailCopyWith<$Res> {
  factory _$$ReceiptDetailImplCopyWith(
    _$ReceiptDetailImpl value,
    $Res Function(_$ReceiptDetailImpl) then,
  ) = __$$ReceiptDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'RECEIPT_ID') String receiptId,
    @JsonKey(name: 'DATE') String date,
    @JsonKey(name: 'STATUS') String status,
    @JsonKey(name: 'GROSS') String gross,
    @JsonKey(name: 'FEDERAL_WITHHOLDING') String federalWithholding,
    @JsonKey(name: 'SOCIAL_SECURITY') String socialSecurity,
    @JsonKey(name: 'HEALTH_INSURANCE') String healthInsurance,
    @JsonKey(name: 'NET_PAY') String netPay,
  });
}

/// @nodoc
class __$$ReceiptDetailImplCopyWithImpl<$Res>
    extends _$ReceiptDetailCopyWithImpl<$Res, _$ReceiptDetailImpl>
    implements _$$ReceiptDetailImplCopyWith<$Res> {
  __$$ReceiptDetailImplCopyWithImpl(
    _$ReceiptDetailImpl _value,
    $Res Function(_$ReceiptDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReceiptDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptId = null,
    Object? date = null,
    Object? status = null,
    Object? gross = null,
    Object? federalWithholding = null,
    Object? socialSecurity = null,
    Object? healthInsurance = null,
    Object? netPay = null,
  }) {
    return _then(
      _$ReceiptDetailImpl(
        receiptId: null == receiptId
            ? _value.receiptId
            : receiptId // ignore: cast_nullable_to_non_nullable
                  as String,
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        gross: null == gross
            ? _value.gross
            : gross // ignore: cast_nullable_to_non_nullable
                  as String,
        federalWithholding: null == federalWithholding
            ? _value.federalWithholding
            : federalWithholding // ignore: cast_nullable_to_non_nullable
                  as String,
        socialSecurity: null == socialSecurity
            ? _value.socialSecurity
            : socialSecurity // ignore: cast_nullable_to_non_nullable
                  as String,
        healthInsurance: null == healthInsurance
            ? _value.healthInsurance
            : healthInsurance // ignore: cast_nullable_to_non_nullable
                  as String,
        netPay: null == netPay
            ? _value.netPay
            : netPay // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiptDetailImpl implements _ReceiptDetail {
  const _$ReceiptDetailImpl({
    @JsonKey(name: 'RECEIPT_ID') this.receiptId = '',
    @JsonKey(name: 'DATE') this.date = '',
    @JsonKey(name: 'STATUS') this.status = '',
    @JsonKey(name: 'GROSS') this.gross = '',
    @JsonKey(name: 'FEDERAL_WITHHOLDING') this.federalWithholding = '',
    @JsonKey(name: 'SOCIAL_SECURITY') this.socialSecurity = '',
    @JsonKey(name: 'HEALTH_INSURANCE') this.healthInsurance = '',
    @JsonKey(name: 'NET_PAY') this.netPay = '',
  });

  factory _$ReceiptDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiptDetailImplFromJson(json);

  @override
  @JsonKey(name: 'RECEIPT_ID')
  final String receiptId;
  @override
  @JsonKey(name: 'DATE')
  final String date;
  @override
  @JsonKey(name: 'STATUS')
  final String status;
  @override
  @JsonKey(name: 'GROSS')
  final String gross;
  @override
  @JsonKey(name: 'FEDERAL_WITHHOLDING')
  final String federalWithholding;
  @override
  @JsonKey(name: 'SOCIAL_SECURITY')
  final String socialSecurity;
  @override
  @JsonKey(name: 'HEALTH_INSURANCE')
  final String healthInsurance;
  @override
  @JsonKey(name: 'NET_PAY')
  final String netPay;

  @override
  String toString() {
    return 'ReceiptDetail(receiptId: $receiptId, date: $date, status: $status, gross: $gross, federalWithholding: $federalWithholding, socialSecurity: $socialSecurity, healthInsurance: $healthInsurance, netPay: $netPay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptDetailImpl &&
            (identical(other.receiptId, receiptId) ||
                other.receiptId == receiptId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.gross, gross) || other.gross == gross) &&
            (identical(other.federalWithholding, federalWithholding) ||
                other.federalWithholding == federalWithholding) &&
            (identical(other.socialSecurity, socialSecurity) ||
                other.socialSecurity == socialSecurity) &&
            (identical(other.healthInsurance, healthInsurance) ||
                other.healthInsurance == healthInsurance) &&
            (identical(other.netPay, netPay) || other.netPay == netPay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    receiptId,
    date,
    status,
    gross,
    federalWithholding,
    socialSecurity,
    healthInsurance,
    netPay,
  );

  /// Create a copy of ReceiptDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptDetailImplCopyWith<_$ReceiptDetailImpl> get copyWith =>
      __$$ReceiptDetailImplCopyWithImpl<_$ReceiptDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiptDetailImplToJson(this);
  }
}

abstract class _ReceiptDetail implements ReceiptDetail {
  const factory _ReceiptDetail({
    @JsonKey(name: 'RECEIPT_ID') final String receiptId,
    @JsonKey(name: 'DATE') final String date,
    @JsonKey(name: 'STATUS') final String status,
    @JsonKey(name: 'GROSS') final String gross,
    @JsonKey(name: 'FEDERAL_WITHHOLDING') final String federalWithholding,
    @JsonKey(name: 'SOCIAL_SECURITY') final String socialSecurity,
    @JsonKey(name: 'HEALTH_INSURANCE') final String healthInsurance,
    @JsonKey(name: 'NET_PAY') final String netPay,
  }) = _$ReceiptDetailImpl;

  factory _ReceiptDetail.fromJson(Map<String, dynamic> json) =
      _$ReceiptDetailImpl.fromJson;

  @override
  @JsonKey(name: 'RECEIPT_ID')
  String get receiptId;
  @override
  @JsonKey(name: 'DATE')
  String get date;
  @override
  @JsonKey(name: 'STATUS')
  String get status;
  @override
  @JsonKey(name: 'GROSS')
  String get gross;
  @override
  @JsonKey(name: 'FEDERAL_WITHHOLDING')
  String get federalWithholding;
  @override
  @JsonKey(name: 'SOCIAL_SECURITY')
  String get socialSecurity;
  @override
  @JsonKey(name: 'HEALTH_INSURANCE')
  String get healthInsurance;
  @override
  @JsonKey(name: 'NET_PAY')
  String get netPay;

  /// Create a copy of ReceiptDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiptDetailImplCopyWith<_$ReceiptDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayrollOverview _$PayrollOverviewFromJson(Map<String, dynamic> json) {
  return _PayrollOverview.fromJson(json);
}

/// @nodoc
mixin _$PayrollOverview {
  @JsonKey(name: 'NEXT_PAYDAY')
  String get nextPayday => throw _privateConstructorUsedError;
  @JsonKey(name: 'NEXT_PAYDAY_EST')
  String get nextPaydayEst => throw _privateConstructorUsedError;
  @JsonKey(name: 'YTD_NET_EARNINGS')
  String get ytdNetEarnings => throw _privateConstructorUsedError;
  @JsonKey(name: 'RECENT_DISBURSEMENTS')
  List<PayStub> get recentDisbursements => throw _privateConstructorUsedError;
  @JsonKey(name: 'STATEMENT_OVERVIEW_MAR15')
  ReceiptDetail get detailMar15 => throw _privateConstructorUsedError;

  /// Serializes this PayrollOverview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayrollOverview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayrollOverviewCopyWith<PayrollOverview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayrollOverviewCopyWith<$Res> {
  factory $PayrollOverviewCopyWith(
    PayrollOverview value,
    $Res Function(PayrollOverview) then,
  ) = _$PayrollOverviewCopyWithImpl<$Res, PayrollOverview>;
  @useResult
  $Res call({
    @JsonKey(name: 'NEXT_PAYDAY') String nextPayday,
    @JsonKey(name: 'NEXT_PAYDAY_EST') String nextPaydayEst,
    @JsonKey(name: 'YTD_NET_EARNINGS') String ytdNetEarnings,
    @JsonKey(name: 'RECENT_DISBURSEMENTS') List<PayStub> recentDisbursements,
    @JsonKey(name: 'STATEMENT_OVERVIEW_MAR15') ReceiptDetail detailMar15,
  });

  $ReceiptDetailCopyWith<$Res> get detailMar15;
}

/// @nodoc
class _$PayrollOverviewCopyWithImpl<$Res, $Val extends PayrollOverview>
    implements $PayrollOverviewCopyWith<$Res> {
  _$PayrollOverviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayrollOverview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPayday = null,
    Object? nextPaydayEst = null,
    Object? ytdNetEarnings = null,
    Object? recentDisbursements = null,
    Object? detailMar15 = null,
  }) {
    return _then(
      _value.copyWith(
            nextPayday: null == nextPayday
                ? _value.nextPayday
                : nextPayday // ignore: cast_nullable_to_non_nullable
                      as String,
            nextPaydayEst: null == nextPaydayEst
                ? _value.nextPaydayEst
                : nextPaydayEst // ignore: cast_nullable_to_non_nullable
                      as String,
            ytdNetEarnings: null == ytdNetEarnings
                ? _value.ytdNetEarnings
                : ytdNetEarnings // ignore: cast_nullable_to_non_nullable
                      as String,
            recentDisbursements: null == recentDisbursements
                ? _value.recentDisbursements
                : recentDisbursements // ignore: cast_nullable_to_non_nullable
                      as List<PayStub>,
            detailMar15: null == detailMar15
                ? _value.detailMar15
                : detailMar15 // ignore: cast_nullable_to_non_nullable
                      as ReceiptDetail,
          )
          as $Val,
    );
  }

  /// Create a copy of PayrollOverview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReceiptDetailCopyWith<$Res> get detailMar15 {
    return $ReceiptDetailCopyWith<$Res>(_value.detailMar15, (value) {
      return _then(_value.copyWith(detailMar15: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayrollOverviewImplCopyWith<$Res>
    implements $PayrollOverviewCopyWith<$Res> {
  factory _$$PayrollOverviewImplCopyWith(
    _$PayrollOverviewImpl value,
    $Res Function(_$PayrollOverviewImpl) then,
  ) = __$$PayrollOverviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'NEXT_PAYDAY') String nextPayday,
    @JsonKey(name: 'NEXT_PAYDAY_EST') String nextPaydayEst,
    @JsonKey(name: 'YTD_NET_EARNINGS') String ytdNetEarnings,
    @JsonKey(name: 'RECENT_DISBURSEMENTS') List<PayStub> recentDisbursements,
    @JsonKey(name: 'STATEMENT_OVERVIEW_MAR15') ReceiptDetail detailMar15,
  });

  @override
  $ReceiptDetailCopyWith<$Res> get detailMar15;
}

/// @nodoc
class __$$PayrollOverviewImplCopyWithImpl<$Res>
    extends _$PayrollOverviewCopyWithImpl<$Res, _$PayrollOverviewImpl>
    implements _$$PayrollOverviewImplCopyWith<$Res> {
  __$$PayrollOverviewImplCopyWithImpl(
    _$PayrollOverviewImpl _value,
    $Res Function(_$PayrollOverviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PayrollOverview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPayday = null,
    Object? nextPaydayEst = null,
    Object? ytdNetEarnings = null,
    Object? recentDisbursements = null,
    Object? detailMar15 = null,
  }) {
    return _then(
      _$PayrollOverviewImpl(
        nextPayday: null == nextPayday
            ? _value.nextPayday
            : nextPayday // ignore: cast_nullable_to_non_nullable
                  as String,
        nextPaydayEst: null == nextPaydayEst
            ? _value.nextPaydayEst
            : nextPaydayEst // ignore: cast_nullable_to_non_nullable
                  as String,
        ytdNetEarnings: null == ytdNetEarnings
            ? _value.ytdNetEarnings
            : ytdNetEarnings // ignore: cast_nullable_to_non_nullable
                  as String,
        recentDisbursements: null == recentDisbursements
            ? _value._recentDisbursements
            : recentDisbursements // ignore: cast_nullable_to_non_nullable
                  as List<PayStub>,
        detailMar15: null == detailMar15
            ? _value.detailMar15
            : detailMar15 // ignore: cast_nullable_to_non_nullable
                  as ReceiptDetail,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PayrollOverviewImpl implements _PayrollOverview {
  const _$PayrollOverviewImpl({
    @JsonKey(name: 'NEXT_PAYDAY') this.nextPayday = '',
    @JsonKey(name: 'NEXT_PAYDAY_EST') this.nextPaydayEst = '',
    @JsonKey(name: 'YTD_NET_EARNINGS') this.ytdNetEarnings = '',
    @JsonKey(name: 'RECENT_DISBURSEMENTS')
    final List<PayStub> recentDisbursements = const [],
    @JsonKey(name: 'STATEMENT_OVERVIEW_MAR15')
    this.detailMar15 = const ReceiptDetail(),
  }) : _recentDisbursements = recentDisbursements;

  factory _$PayrollOverviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayrollOverviewImplFromJson(json);

  @override
  @JsonKey(name: 'NEXT_PAYDAY')
  final String nextPayday;
  @override
  @JsonKey(name: 'NEXT_PAYDAY_EST')
  final String nextPaydayEst;
  @override
  @JsonKey(name: 'YTD_NET_EARNINGS')
  final String ytdNetEarnings;
  final List<PayStub> _recentDisbursements;
  @override
  @JsonKey(name: 'RECENT_DISBURSEMENTS')
  List<PayStub> get recentDisbursements {
    if (_recentDisbursements is EqualUnmodifiableListView)
      return _recentDisbursements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentDisbursements);
  }

  @override
  @JsonKey(name: 'STATEMENT_OVERVIEW_MAR15')
  final ReceiptDetail detailMar15;

  @override
  String toString() {
    return 'PayrollOverview(nextPayday: $nextPayday, nextPaydayEst: $nextPaydayEst, ytdNetEarnings: $ytdNetEarnings, recentDisbursements: $recentDisbursements, detailMar15: $detailMar15)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayrollOverviewImpl &&
            (identical(other.nextPayday, nextPayday) ||
                other.nextPayday == nextPayday) &&
            (identical(other.nextPaydayEst, nextPaydayEst) ||
                other.nextPaydayEst == nextPaydayEst) &&
            (identical(other.ytdNetEarnings, ytdNetEarnings) ||
                other.ytdNetEarnings == ytdNetEarnings) &&
            const DeepCollectionEquality().equals(
              other._recentDisbursements,
              _recentDisbursements,
            ) &&
            (identical(other.detailMar15, detailMar15) ||
                other.detailMar15 == detailMar15));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    nextPayday,
    nextPaydayEst,
    ytdNetEarnings,
    const DeepCollectionEquality().hash(_recentDisbursements),
    detailMar15,
  );

  /// Create a copy of PayrollOverview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayrollOverviewImplCopyWith<_$PayrollOverviewImpl> get copyWith =>
      __$$PayrollOverviewImplCopyWithImpl<_$PayrollOverviewImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PayrollOverviewImplToJson(this);
  }
}

abstract class _PayrollOverview implements PayrollOverview {
  const factory _PayrollOverview({
    @JsonKey(name: 'NEXT_PAYDAY') final String nextPayday,
    @JsonKey(name: 'NEXT_PAYDAY_EST') final String nextPaydayEst,
    @JsonKey(name: 'YTD_NET_EARNINGS') final String ytdNetEarnings,
    @JsonKey(name: 'RECENT_DISBURSEMENTS')
    final List<PayStub> recentDisbursements,
    @JsonKey(name: 'STATEMENT_OVERVIEW_MAR15') final ReceiptDetail detailMar15,
  }) = _$PayrollOverviewImpl;

  factory _PayrollOverview.fromJson(Map<String, dynamic> json) =
      _$PayrollOverviewImpl.fromJson;

  @override
  @JsonKey(name: 'NEXT_PAYDAY')
  String get nextPayday;
  @override
  @JsonKey(name: 'NEXT_PAYDAY_EST')
  String get nextPaydayEst;
  @override
  @JsonKey(name: 'YTD_NET_EARNINGS')
  String get ytdNetEarnings;
  @override
  @JsonKey(name: 'RECENT_DISBURSEMENTS')
  List<PayStub> get recentDisbursements;
  @override
  @JsonKey(name: 'STATEMENT_OVERVIEW_MAR15')
  ReceiptDetail get detailMar15;

  /// Create a copy of PayrollOverview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayrollOverviewImplCopyWith<_$PayrollOverviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
