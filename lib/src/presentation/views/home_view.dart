import 'package:flutter/material.dart';

import '../core/app_theme.dart';
import '../widgets/geowork_widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Dashboard Greeting
          const Text(
            'MONDAY, OCTOBER 23',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5,
              color: AppColors.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Welcome back, Adrian.',
            style: TextStyle(
              fontSize: 30, // closest to text-3xl
              fontWeight: FontWeight.w900, // font-black
              color: AppColors.onSurface,
              letterSpacing: -1,
              height: 1.1,
            ),
          ),
          const SizedBox(height: 24),

          // Attendance Status Card
          _AttendanceStatusCard(),
          const SizedBox(height: 24),

          // Profile Summary (Asymmetric Card)
          _ProfileSummaryCard(),
          const SizedBox(height: 24),

          // Upcoming Holidays
          _UpcomingHolidaysCard(),
          const SizedBox(height: 24),

          // Recent Payroll
          _RecentPayrollCard(),
          const SizedBox(height: 24),

          // Operational Highlights
          const Center(
            child: Text(
              'OPERATIONAL HIGHLIGHTS',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w900,
                letterSpacing: 2,
                color: AppColors.onSurfaceVariant,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(child: _HighlightCard(icon: Icons.access_time_outlined, value: '98.4%', label: 'PUNCTUALITY')),
              const SizedBox(width: 12),
              Expanded(child: _HighlightCard(icon: Icons.task_alt, value: '12', label: 'TASKS')),
              const SizedBox(width: 12),
              Expanded(child: _HighlightCard(icon: Icons.timer_outlined, value: '168h', label: 'LOGGED')),
            ],
          ),
        ],
      ),
    );
  }
}

class _AttendanceStatusCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TonalCard(
      padding: const EdgeInsets.all(24),
      borderRadius: 16, // rounded-2xl
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Daily Attendance',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: AppColors.primary),
          ),
          const SizedBox(height: 4),
          const Text(
            'Shift: 09:00 AM - 05:00 PM',
            style: TextStyle(fontSize: 12, color: AppColors.onSurfaceVariant),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  child: const Text('Punch In', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.surfaceContainerHigh,
                    foregroundColor: AppColors.onSurfaceVariant,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  child: const Text('Request Leave', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.surfaceContainerLow,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.surfaceContainer),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('CHECK IN', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold, letterSpacing: 1.5, color: AppColors.onSurfaceVariant)),
                    SizedBox(height: 4),
                    Text('--:--', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: AppColors.primary)),
                  ],
                ),
                Container(width: 1, height: 32, color: AppColors.outlineVariant.withValues(alpha: 0.3)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text('STATUS', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold, letterSpacing: 1.5, color: AppColors.onSurfaceVariant)),
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.tertiaryFixed,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Container(width: 4, height: 12, decoration: BoxDecoration(color: AppColors.tertiary, borderRadius: BorderRadius.circular(2))),
                          const SizedBox(width: 6),
                          const Text('PENDING', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: AppColors.onTertiaryFixedVariant)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileSummaryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(24),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ACTIVE ROLE', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, letterSpacing: 1.5, color: AppColors.onPrimaryContainer.withValues(alpha: 0.9))),
              const SizedBox(height: 4),
              const Text('Senior Systems\nArchitect', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: Colors.white, height: 1.2)),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('LEAVE BALANCE', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: AppColors.onPrimaryContainer.withValues(alpha: 0.9))),
                      const SizedBox(height: 4),
                      const Text('14 Days', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, color: Colors.white)),
                    ],
                  ),
                  Icon(Icons.account_balance_wallet, size: 40, color: Colors.white.withValues(alpha: 0.2)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _UpcomingHolidaysCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.surfaceContainer),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Upcoming Holidays', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.onSurface)),
              Icon(Icons.event_outlined, color: AppColors.onSurfaceVariant),
            ],
          ),
          const SizedBox(height: 24),
          _HolidayItem(month: 'NOV', day: '11', title: 'Veterans Day', subtitle: 'National Holiday • Friday', isTertiary: true),
          const SizedBox(height: 12),
          _HolidayItem(month: 'NOV', day: '23', title: 'Thanksgiving', subtitle: 'Company Holiday • Thursday', isTertiary: false),
        ],
      ),
    );
  }
}

class _HolidayItem extends StatelessWidget {
  final String month;
  final String day;
  final String title;
  final String subtitle;
  final bool isTertiary;

  const _HolidayItem({required this.month, required this.day, required this.title, required this.subtitle, required this.isTertiary});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.surfaceContainer.withValues(alpha: 0.5)),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: isTertiary ? AppColors.tertiaryFixed : AppColors.primaryFixed,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(month, style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold, color: isTertiary ? AppColors.onTertiaryFixedVariant : AppColors.onPrimaryFixedVariant)),
                Text(day, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: isTertiary ? AppColors.onTertiaryFixedVariant : AppColors.onPrimaryFixedVariant)),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.onSurface)),
                Text(subtitle, style: const TextStyle(fontSize: 11, color: AppColors.onSurfaceVariant)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _RecentPayrollCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TonalCard(
      padding: const EdgeInsets.all(24),
      borderRadius: 16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Recent Payroll', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.onSurface)),
                  SizedBox(height: 2),
                  Text('OCT 2023 CYCLE', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, letterSpacing: 1.5, color: AppColors.onSurfaceVariant)),
                ],
              ),
              Row(
                children: const [
                  Text('History', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: AppColors.primary)),
                  Icon(Icons.arrow_forward_outlined, size: 14, color: AppColors.primary),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.surfaceContainerLow,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.surfaceContainer),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all(color: AppColors.surfaceContainer)),
                          child: const Icon(Icons.receipt_long, color: AppColors.primary, size: 20),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Monthly Salary', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.onSurface)),
                            Text('Paid Oct 20', style: TextStyle(fontSize: 11, color: AppColors.onSurfaceVariant)),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text('\$8,450', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: AppColors.onSurface)),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(color: AppColors.onTertiaryContainer.withValues(alpha: 0.1), borderRadius: BorderRadius.circular(12)),
                          child: const Text('SUCCESS', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold, color: AppColors.onTertiaryContainer)),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.5), borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.surfaceContainer.withValues(alpha: 0.3))),
                        child: Column(
                          children: const [
                            Text('BASE', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold, color: AppColors.onSurfaceVariant)),
                            Text('\$7,200', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.onSurface)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.5), borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.surfaceContainer.withValues(alpha: 0.3))),
                        child: Column(
                          children: const [
                            Text('ALLOWANCES', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold, color: AppColors.onSurfaceVariant)),
                            Text('\$1,250', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.onSurface)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _HighlightCard extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const _HighlightCard({required this.icon, required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainer,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.surfaceContainer),
      ),
      child: Column(
        children: [
          Icon(icon, color: AppColors.primary, size: 20),
          const SizedBox(height: 8),
          Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900, letterSpacing: -0.5)),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(fontSize: 9, fontWeight: FontWeight.bold, color: AppColors.onSurfaceVariant)),
        ],
      ),
    );
  }
}
