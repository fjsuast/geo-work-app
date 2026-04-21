// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payroll.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayStubImpl _$$PayStubImplFromJson(Map<String, dynamic> json) =>
    _$PayStubImpl(
      title: json['TITLE'] as String? ?? '',
      subtitle: json['SUBTITLE'] as String? ?? '',
      amount: json['AMOUNT'] as String? ?? '',
      status: json['STATUS'] as String? ?? 'DEPOSITED',
    );

Map<String, dynamic> _$$PayStubImplToJson(_$PayStubImpl instance) =>
    <String, dynamic>{
      'TITLE': instance.title,
      'SUBTITLE': instance.subtitle,
      'AMOUNT': instance.amount,
      'STATUS': instance.status,
    };

_$ReceiptDetailImpl _$$ReceiptDetailImplFromJson(Map<String, dynamic> json) =>
    _$ReceiptDetailImpl(
      receiptId: json['RECEIPT_ID'] as String? ?? '',
      date: json['DATE'] as String? ?? '',
      status: json['STATUS'] as String? ?? '',
      gross: json['GROSS'] as String? ?? '',
      federalWithholding: json['FEDERAL_WITHHOLDING'] as String? ?? '',
      socialSecurity: json['SOCIAL_SECURITY'] as String? ?? '',
      healthInsurance: json['HEALTH_INSURANCE'] as String? ?? '',
      netPay: json['NET_PAY'] as String? ?? '',
    );

Map<String, dynamic> _$$ReceiptDetailImplToJson(_$ReceiptDetailImpl instance) =>
    <String, dynamic>{
      'RECEIPT_ID': instance.receiptId,
      'DATE': instance.date,
      'STATUS': instance.status,
      'GROSS': instance.gross,
      'FEDERAL_WITHHOLDING': instance.federalWithholding,
      'SOCIAL_SECURITY': instance.socialSecurity,
      'HEALTH_INSURANCE': instance.healthInsurance,
      'NET_PAY': instance.netPay,
    };

_$PayrollOverviewImpl _$$PayrollOverviewImplFromJson(
  Map<String, dynamic> json,
) => _$PayrollOverviewImpl(
  nextPayday: json['NEXT_PAYDAY'] as String? ?? '',
  nextPaydayEst: json['NEXT_PAYDAY_EST'] as String? ?? '',
  ytdNetEarnings: json['YTD_NET_EARNINGS'] as String? ?? '',
  recentDisbursements:
      (json['RECENT_DISBURSEMENTS'] as List<dynamic>?)
          ?.map((e) => PayStub.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  detailMar15: json['STATEMENT_OVERVIEW_MAR15'] == null
      ? const ReceiptDetail()
      : ReceiptDetail.fromJson(
          json['STATEMENT_OVERVIEW_MAR15'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$PayrollOverviewImplToJson(
  _$PayrollOverviewImpl instance,
) => <String, dynamic>{
  'NEXT_PAYDAY': instance.nextPayday,
  'NEXT_PAYDAY_EST': instance.nextPaydayEst,
  'YTD_NET_EARNINGS': instance.ytdNetEarnings,
  'RECENT_DISBURSEMENTS': instance.recentDisbursements,
  'STATEMENT_OVERVIEW_MAR15': instance.detailMar15,
};
