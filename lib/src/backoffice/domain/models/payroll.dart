// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payroll.freezed.dart';
part 'payroll.g.dart';

@freezed
class PayStub with _$PayStub {
  const factory PayStub({
    @JsonKey(name: 'TITLE') @Default('') String title,
    @JsonKey(name: 'SUBTITLE') @Default('') String subtitle,
    @JsonKey(name: 'AMOUNT') @Default('') String amount,
    @JsonKey(name: 'STATUS') @Default('DEPOSITED') String status,
  }) = _PayStub;

  factory PayStub.fromJson(Map<String, dynamic> json) =>
      _$PayStubFromJson(json);
}

@freezed
class ReceiptDetail with _$ReceiptDetail {
  const factory ReceiptDetail({
    @JsonKey(name: 'RECEIPT_ID') @Default('') String receiptId,
    @JsonKey(name: 'DATE') @Default('') String date,
    @JsonKey(name: 'STATUS') @Default('') String status,
    @JsonKey(name: 'GROSS') @Default('') String gross,
    @JsonKey(name: 'FEDERAL_WITHHOLDING') @Default('') String federalWithholding,
    @JsonKey(name: 'SOCIAL_SECURITY') @Default('') String socialSecurity,
    @JsonKey(name: 'HEALTH_INSURANCE') @Default('') String healthInsurance,
    @JsonKey(name: 'NET_PAY') @Default('') String netPay,
  }) = _ReceiptDetail;

  factory ReceiptDetail.fromJson(Map<String, dynamic> json) =>
      _$ReceiptDetailFromJson(json);
}

@freezed
class PayrollOverview with _$PayrollOverview {
  const factory PayrollOverview({
    @JsonKey(name: 'NEXT_PAYDAY') @Default('') String nextPayday,
    @JsonKey(name: 'NEXT_PAYDAY_EST') @Default('') String nextPaydayEst,
    @JsonKey(name: 'YTD_NET_EARNINGS') @Default('') String ytdNetEarnings,
    @JsonKey(name: 'RECENT_DISBURSEMENTS') @Default([]) List<PayStub> recentDisbursements,
    @JsonKey(name: 'STATEMENT_OVERVIEW_MAR15') @Default(ReceiptDetail()) ReceiptDetail detailMar15,
  }) = _PayrollOverview;

  factory PayrollOverview.fromJson(Map<String, dynamic> json) =>
      _$PayrollOverviewFromJson(json);
}
