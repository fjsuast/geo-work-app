import 'package:flutter/material.dart';

import '../core/app_theme.dart';

class VacationsView extends StatelessWidget {
  const VacationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 40, bottom: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Dashboard Header
          const Text(
            'EMPLOYEE DASHBOARD',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w800,
              letterSpacing: 2.5,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Vacation Management',
            style: TextStyle(
              fontSize: 36, // text-4xl
              fontWeight: FontWeight.w900,
              color: AppColors.onSurface,
              letterSpacing: -1,
              height: 1.1,
            ),
          ),
          const SizedBox(height: 32),

          // Main Balance Card
          _MainBalanceCard(),
          const SizedBox(height: 16),

          // Stats Stack
          Row(
            children: [
              Expanded(child: _StatCard(title: 'Pending', value: '05', icon: Icons.pending_actions, isTertiary: true)),
              const SizedBox(width: 16),
              Expanded(child: _StatCard(title: 'Taken (YTD)', value: '12', icon: Icons.calendar_month, isTertiary: false)),
            ],
          ),
          const SizedBox(height: 48),

          // Upcoming Periods
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Upcoming Periods', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.onSurface, letterSpacing: -0.5)),
                  Text('Scheduled time off', style: TextStyle(fontSize: 14, color: AppColors.onSurfaceVariant)),
                ],
              ),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  elevation: 8,
                  shadowColor: AppColors.primary.withValues(alpha: 0.5),
                ),
                child: const Text('Request New', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const _VacationPeriodCard(
            month: 'DEC', day: '24',
            title: 'Winter Holidays',
            dateRange: 'Dec 24, 2024 — Jan 03, 2025',
            daysText: '10 Days',
            status: 'Approved',
            isApproved: true,
          ),
          const SizedBox(height: 12),
          const _VacationPeriodCard(
            month: 'OCT', day: '14',
            title: 'Personal Break',
            dateRange: 'Oct 14, 2024 — Oct 18, 2024',
            daysText: '05 Days',
            status: 'Pending',
            isApproved: false,
          ),
          const SizedBox(height: 64),

          // Asymmetric Detail Section
          _AsymmetricDetailSection(),
        ],
      ),
    );
  }
}

class _MainBalanceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.outlineVariant.withValues(alpha: 0.2)),
        boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.02), blurRadius: 10, offset: const Offset(0, 4))],
      ),
      padding: const EdgeInsets.all(32),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 40, height: 40,
                    decoration: BoxDecoration(color: AppColors.primary.withValues(alpha: 0.1), borderRadius: BorderRadius.circular(12)),
                    child: const Icon(Icons.beach_access, color: AppColors.primary),
                  ),
                  const SizedBox(width: 12),
                  const Text('Available Balance', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.onSurface)),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  const Text('18', style: TextStyle(fontSize: 48, fontWeight: FontWeight.w900, color: AppColors.primary, letterSpacing: -2)),
                  const SizedBox(width: 8),
                  Text('DAYS', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.onSurfaceVariant, letterSpacing: 2)),
                ],
              ),
              const SizedBox(height: 32),
              Container(
                height: 12,
                width: double.infinity,
                decoration: BoxDecoration(color: AppColors.surfaceContainerHighest, borderRadius: BorderRadius.circular(6)),
                child: FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: 0.6,
                  child: Container(decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(6))),
                ),
              ),
              const SizedBox(height: 12),
              const Text('Accrued 18 of 30 days total for current cycle', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.onSurfaceVariant)),
            ],
          ),
          // Decorative blur blob
          Positioned(
            right: -20, top: -20,
            child: Container(
              width: 120, height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primary.withValues(alpha: 0.05),
                boxShadow: [BoxShadow(color: AppColors.primary.withValues(alpha: 0.05), blurRadius: 40)],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final bool isTertiary;

  const _StatCard({required this.title, required this.value, required this.icon, required this.isTertiary});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: isTertiary ? AppColors.tertiaryFixed : AppColors.secondaryContainer,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: isTertiary ? AppColors.tertiaryFixed.withValues(alpha: 0.5) : AppColors.secondaryContainer.withValues(alpha: 0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title.toUpperCase(), style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, letterSpacing: 1.5, color: isTertiary ? AppColors.onTertiaryFixedVariant : AppColors.onSecondaryContainer)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(value, style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, color: isTertiary ? AppColors.tertiary : AppColors.secondary)),
              Icon(icon, color: isTertiary ? AppColors.tertiary.withValues(alpha: 0.4) : AppColors.secondary.withValues(alpha: 0.4)),
            ],
          ),
        ],
      ),
    );
  }
}

class _VacationPeriodCard extends StatelessWidget {
  final String month;
  final String day;
  final String title;
  final String dateRange;
  final String daysText;
  final String status;
  final bool isApproved;

  const _VacationPeriodCard({required this.month, required this.day, required this.title, required this.dateRange, required this.daysText, required this.status, required this.isApproved});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.outlineVariant.withValues(alpha: 0.1)),
        boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.02), blurRadius: 10, offset: const Offset(0, 2))],
      ),
      child: Row(
        children: [
          Container(
            width: 48, height: 48,
            decoration: BoxDecoration(color: AppColors.surfaceContainerHigh, borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.white.withValues(alpha: 0.5))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(month, style: const TextStyle(fontSize: 9, fontWeight: FontWeight.bold, color: AppColors.primary)),
                Text(day, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: AppColors.onSurface)),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.onSurface)),
                Text(dateRange, style: const TextStyle(fontSize: 11, color: AppColors.onSurfaceVariant)),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(daysText.toUpperCase(), style: const TextStyle(fontSize: 9, fontWeight: FontWeight.bold, letterSpacing: 1.5, color: AppColors.onSurfaceVariant)),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: isApproved ? Colors.green.shade100 : AppColors.tertiaryFixed,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: isApproved ? Colors.green.shade200 : AppColors.tertiaryFixed),
                ),
                child: Text(status.toUpperCase(), style: TextStyle(fontSize: 10, fontWeight: FontWeight.w900, letterSpacing: 1, color: isApproved ? Colors.green.shade800 : AppColors.onTertiaryFixedVariant)),
              ),
            ],
          ),
          const SizedBox(width: 12),
          const Icon(Icons.chevron_right, color: AppColors.outlineVariant),
        ],
      ),
    );
  }
}

class _AsymmetricDetailSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Plan your next escape with confidence.', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: AppColors.onSurface, letterSpacing: -1, height: 1.1)),
        const SizedBox(height: 16),
        const Text(
          'Real-time accrual tracking and simplified approval flows. Clarity on your well-deserved rest, integrated into your daily workflow.',
          style: TextStyle(fontSize: 14, color: AppColors.onSurfaceVariant, height: 1.5),
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(child: _ActionBaseCard(icon: Icons.event_note, label: 'Calendar')),
            const SizedBox(width: 8),
            Expanded(child: _ActionBaseCard(icon: Icons.history, label: 'History')),
            const SizedBox(width: 8),
            Expanded(child: _ActionBaseCard(icon: Icons.policy, label: 'Policy')),
          ],
        ),
        const SizedBox(height: 32),
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuCB-m4_x9d93roley-JuKuC6HEYIRIX4BXv7q7OSjNXiz_jE3B8aYdpDkBwiCwl_Ub5Zxl06ZPIBCyN27arSKh0i2MrnhXajx8nX0Y-cRxiim4JaeDWZp0o1Dd4s2VPpo2peUYInRN5jkdIaKPAHiqLiMaDtMOq-meletxHZYe0dqiWo89XDfhhr-xsvWYw-9EuXuXPJbA76OBX9oAx0uHtlYC_eTPg0FFCSe60jg0F7_iM2FUdGL7UBo47EoyUGZALy_yk5q8i0As',
                  fit: BoxFit.cover,
                ),
                Container(color: AppColors.primary.withValues(alpha: 0.1)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ActionBaseCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionBaseCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.outlineVariant.withValues(alpha: 0.1)),
      ),
      child: Column(
        children: [
          Icon(icon, color: AppColors.primary, size: 24),
          const SizedBox(height: 4),
          Text(label.toUpperCase(), style: const TextStyle(fontSize: 9, fontWeight: FontWeight.w900, letterSpacing: 1.5, color: AppColors.onSurface)),
        ],
      ),
    );
  }
}
