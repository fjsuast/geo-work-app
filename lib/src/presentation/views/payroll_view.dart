import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../backoffice/domain/models/payroll.dart';
import '../blocs/base_state.dart';
import '../blocs/payroll_cubit.dart';
import '../core/app_theme.dart';
import '../widgets/geowork_widgets.dart';

class PayrollView extends StatelessWidget {
  const PayrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PayrollCubit, BaseState<PayrollOverview>>(
      builder: (context, state) {
        if (state.loading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.error != null) {
          return Center(child: Text('Error: ${state.error}'));
        }

        final data = state.data;
        if (data == null) {
          return const Center(child: Text('No data available'));
        }

        return _PayrollContent(data: data);
      },
    );
  }
}

class _PayrollContent extends StatelessWidget {
  final PayrollOverview data;

  const _PayrollContent({required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 40, bottom: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Dashboard Header
          const Text(
            'Payroll History',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.w900, letterSpacing: -1),
          ),
          const SizedBox(height: 8),
          Text(
            'Manage and review your secure compensation records.',
            style: TextStyle(
              color: AppColors.onSurfaceVariant,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 32),

          // Summary Cards — stacked vertically
          _NextPaydayCard(data: data),
          const SizedBox(height: 16),
          _YtdEarningsCard(data: data),
          const SizedBox(height: 48),

          // Recent Disbursements
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recent Disbursements',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, letterSpacing: -0.5),
              ),
              const _FilterButton(),
            ],
          ),
          const SizedBox(height: 20),
          ...data.recentDisbursements.map(
            (stub) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: _DisbursementCard(stub: stub),
            ),
          ),
          const SizedBox(height: 48),

          // Statement Overview
          const Text(
            'Statement Overview: Mar 15',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, letterSpacing: -0.5),
          ),
          const SizedBox(height: 24),
          _StatementCard(detail: data.detailMar15),
        ],
      ),
    );
  }
}

class _NextPaydayCard extends StatelessWidget {
  final PayrollOverview data;

  const _NextPaydayCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.primaryContainer,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.2),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'NEXT PAYDAY',
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.6),
                  fontSize: 10,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                data.nextPayday,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Est: ${data.nextPaydayEst}',
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.7),
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Positioned(
            right: -16,
            bottom: -16,
            child: Opacity(
              opacity: 0.15,
              child: Icon(Icons.account_balance_wallet, size: 80, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class _YtdEarningsCard extends StatelessWidget {
  final PayrollOverview data;

  const _YtdEarningsCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return TonalCard(
      padding: const EdgeInsets.all(24),
      borderRadius: 28,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'YTD NET EARNINGS',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w900,
              letterSpacing: 1.5,
              color: AppColors.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
            child: Text(
              data.ytdNetEarnings,
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 40,
                color: AppColors.primary,
                letterSpacing: -2,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Month bubbles
              const _MonthBubbles(),
              Text(
                'Last updated: Mar 15, 2024',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: AppColors.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MonthBubbles extends StatelessWidget {
  const _MonthBubbles();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 32,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: AppColors.primaryFixed,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.surface, width: 2),
              ),
              child: const Center(
                child: Text('Jan', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w900)),
              ),
            ),
          ),
          Positioned(
            left: 20,
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: AppColors.primaryFixedDim,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.surface, width: 2),
              ),
              child: const Center(
                child: Text('Feb', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w900)),
              ),
            ),
          ),
          Positioned(
            left: 40,
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.surface, width: 2),
              ),
              child: const Center(
                child: Text(
                  'Mar',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w900, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterButton extends StatelessWidget {
  const _FilterButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        children: [
          Icon(Icons.filter_list, size: 14, color: AppColors.primary),
          SizedBox(width: 8),
          Text(
            'Filter',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800, color: AppColors.primary),
          ),
        ],
      ),
    );
  }
}

class _DisbursementCard extends StatelessWidget {
  final PayStub stub;

  const _DisbursementCard({required this.stub});

  @override
  Widget build(BuildContext context) {
    return TonalCard(
      padding: const EdgeInsets.all(16),
      borderRadius: 20,
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: AppColors.secondaryContainer,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(Icons.receipt_long, size: 20, color: AppColors.onSecondaryContainer),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stub.title,
                  style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  stub.subtitle,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: AppColors.onSurfaceVariant,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.visibility_outlined, size: 20, color: AppColors.primary),
            style: IconButton.styleFrom(
              backgroundColor: AppColors.primaryFixed,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatementCard extends StatelessWidget {
  final ReceiptDetail detail;

  const _StatementCard({required this.detail});

  @override
  Widget build(BuildContext context) {
    return TonalCard(
      padding: const EdgeInsets.all(28),
      borderRadius: 32,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with receipt ID and status badge
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      detail.receiptId,
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        color: AppColors.primary,
                        letterSpacing: -1,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      detail.date.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.5,
                        color: AppColors.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              _StatusBadge(text: detail.status),
            ],
          ),
          const SizedBox(height: 32),

          // Receipt lines with dashed dividers
          _ReceiptLine(label: 'Gross Earnings', value: detail.gross),
          _ReceiptLine(label: 'Federal Withholding', value: detail.federalWithholding, isDeduction: true),
          _ReceiptLine(label: 'Social Security', value: detail.socialSecurity, isDeduction: true),
          _ReceiptLine(label: 'Health Insurance', value: detail.healthInsurance, isDeduction: true),
          const SizedBox(height: 24),

          // Net Pay
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              const Text(
                'NET PAY',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, letterSpacing: -0.5),
              ),
              Text(
                detail.netPay,
                style: const TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w900,
                  fontSize: 36,
                  letterSpacing: -2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  final String text;

  const _StatusBadge({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.primaryFixed,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.primary.withValues(alpha: 0.1)),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w900,
          color: AppColors.primary,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}

class _ReceiptLine extends StatelessWidget {
  final String label;
  final String value;
  final bool isDeduction;

  const _ReceiptLine({required this.label, required this.value, this.isDeduction = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.outlineVariant.withValues(alpha: 0.3),
            width: 1,
            // Dashed borders aren't native in Flutter, so we use a thin solid line
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.onSurfaceVariant,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w800,
              color: isDeduction ? AppColors.error : AppColors.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
