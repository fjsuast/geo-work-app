import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../backoffice/domain/models/attendance.dart';
import '../blocs/attendance_cubit.dart';
import '../blocs/base_state.dart';
import '../core/app_theme.dart';
import '../widgets/geowork_widgets.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AttendanceCubit, BaseState<AttendanceOverview>>(
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

        return _HistoryContent(data: data);
      },
    );
  }
}

class _HistoryContent extends StatelessWidget {
  final AttendanceOverview data;

  const _HistoryContent({required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 40, bottom: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section — label above title
          Text(
            'MONTHLY OVERVIEW',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w800,
              letterSpacing: 2.5,
              color: AppColors.primary.withValues(alpha: 0.6),
            ),
          ),
          const SizedBox(height: 8),
          // Title takes full width
          Text(
            data.monthDescription,
            style: const TextStyle(fontSize: 34, fontWeight: FontWeight.w900, letterSpacing: -1, height: 1.1),
          ),
          const SizedBox(height: 12),
          // Navigator on its own row, aligned right
          const Align(alignment: Alignment.centerRight, child: _MonthNavigator()),
          const SizedBox(height: 24),

          // Compact Legend
          const _Legend(),
          const SizedBox(height: 24),

          // Stats Grid
          _StatsGrid(data: data),
          const SizedBox(height: 32),

          // Calendar Section
          _CalendarSection(data: data),
          const SizedBox(height: 48),

          // Shift Incidents
          const Text(
            'Shift Incidents',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, letterSpacing: -0.5),
          ),
          const SizedBox(height: 20),
          ...data.incidents.map(
            (incident) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: _IncidentCard(incident: incident),
            ),
          ),
        ],
      ),
    );
  }
}

class _Legend extends StatelessWidget {
  const _Legend();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        _LegendItem(color: AppColors.primary, label: 'Worked'),
        SizedBox(width: 16),
        _LegendItem(color: AppColors.error, label: 'Missed'),
        SizedBox(width: 16),
        _LegendItem(color: AppColors.tertiary, label: 'Holiday'),
      ],
    );
  }
}

class _LegendItem extends StatelessWidget {
  final Color color;
  final String label;

  const _LegendItem({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 8),
        Text(
          label.toUpperCase(),
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.2,
            color: AppColors.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class _MonthNavigator extends StatelessWidget {
  const _MonthNavigator();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {},
            child: const Padding(padding: EdgeInsets.all(8), child: Icon(Icons.chevron_left, size: 20)),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text('Today', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 13)),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {},
            child: const Padding(padding: EdgeInsets.all(8), child: Icon(Icons.chevron_right, size: 20)),
          ),
        ],
      ),
    );
  }
}

class _StatsGrid extends StatelessWidget {
  final AttendanceOverview data;

  const _StatsGrid({required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _StatCard(
            icon: Icons.fact_check,
            value: data.workedCount.toString().padLeft(2, '0'),
            label: 'Worked',
            color: AppColors.primary,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _StatCard(
            icon: Icons.history_toggle_off,
            value: data.missedCount.toString().padLeft(2, '0'),
            label: 'Misses',
            color: AppColors.error,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _StatCard(
            icon: Icons.celebration,
            value: data.holidayCount.toString().padLeft(2, '0'),
            label: 'Holidays',
            color: AppColors.tertiary,
          ),
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final Color color;

  const _StatCard({required this.icon, required this.value, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return TonalCard(
      padding: const EdgeInsets.symmetric(vertical: 16),
      borderRadius: 16,
      child: Column(
        children: [
          Icon(icon, color: color, size: 20),
          const SizedBox(height: 4),
          Text(value, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 20, height: 1.1)),
          const SizedBox(height: 2),
          Text(
            label.toUpperCase(),
            style: const TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.5,
              color: AppColors.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class _CalendarSection extends StatelessWidget {
  final AttendanceOverview data;

  const _CalendarSection({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        children: [
          Row(
            children: ['SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT']
                .map(
                  (day) => Expanded(
                    child: Center(
                      child: Text(
                        day,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 2,
                          color: AppColors.onSurfaceVariant.withValues(alpha: 0.6),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 16),
          // Calendar grid
          GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 35,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
            ),
            itemBuilder: (context, index) {
              // September 2024 starts on a Sunday — but the HTML
              // shows 4 greyed-out days (28, 29, 30, 31 from August)
              // at indices 0–3, then day 1 at index 4.
              final dayNum = index - 3; // so index 0 → -3 (28), index 3 → 0 (31), index 4 → 1
              final isCurrentMonth = dayNum > 0 && dayNum <= 30;

              SingleAttendance? record;
              if (isCurrentMonth) {
                final match = data.dailyRecords.where((r) => r.day == dayNum);
                if (match.isNotEmpty) {
                  record = match.first;
                }
              }

              return _DayCell(dayNum: dayNum, isCurrentMonth: isCurrentMonth, record: record);
            },
          ),
        ],
      ),
    );
  }
}

class _DayCell extends StatelessWidget {
  final int dayNum;
  final bool isCurrentMonth;
  final SingleAttendance? record;

  const _DayCell({required this.dayNum, required this.isCurrentMonth, this.record});

  @override
  Widget build(BuildContext context) {
    final bool isToday = dayNum == 29;
    final bool isMissed = record != null && record!.color == 'error';

    // Determine background color
    Color bgColor;
    if (!isCurrentMonth) {
      bgColor = Colors.transparent;
    } else if (isToday) {
      bgColor = AppColors.primaryFixed;
    } else if (isMissed) {
      bgColor = AppColors.errorContainer.withValues(alpha: 0.1);
    } else {
      bgColor = AppColors.surfaceContainerLowest;
    }

    // Determine text color
    Color textColor;
    if (!isCurrentMonth) {
      textColor = AppColors.onSurface.withValues(alpha: 0.3);
    } else if (isToday) {
      textColor = AppColors.primary;
    } else if (isMissed) {
      textColor = AppColors.error;
    } else if (record == null) {
      // Weekend / no-record days — faded
      textColor = AppColors.onSurfaceVariant.withValues(alpha: 0.4);
    } else {
      textColor = AppColors.onSurface;
    }

    // Display text
    final String displayDay;
    if (dayNum > 0) {
      displayDay = dayNum > 30 ? (dayNum - 30).toString() : dayNum.toString();
    } else {
      displayDay = (28 + dayNum).toString(); // Previous month's days
    }

    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: isToday ? Border.all(color: AppColors.primary, width: 2) : null,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(6),
            child: Text(
              displayDay,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w800, color: textColor),
            ),
          ),
          if (record != null)
            Positioned(
              bottom: 6,
              left: 6,
              right: 6,
              child: Container(
                height: 4,
                decoration: BoxDecoration(
                  color: _getColor(record!.color),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Color _getColor(String colorName) {
    switch (colorName) {
      case 'primary':
        return AppColors.primary;
      case 'error':
        return AppColors.error;
      case 'tertiary':
        return AppColors.tertiary;
      default:
        return AppColors.primary;
    }
  }
}

class _IncidentCard extends StatelessWidget {
  final ShiftIncident incident;

  const _IncidentCard({required this.incident});

  @override
  Widget build(BuildContext context) {
    return TonalCard(
      padding: const EdgeInsets.all(20),
      borderRadius: 20,
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.errorContainer.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  incident.month,
                  style: const TextStyle(fontSize: 9, fontWeight: FontWeight.w900, color: AppColors.error),
                ),
                Text(
                  incident.day.toString(),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: AppColors.error,
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 14,
                          color: AppColors.onSurface,
                        ),
                        children: [
                          TextSpan(text: '${incident.title} '),
                          TextSpan(
                            text: incident.diff,
                            style: const TextStyle(color: AppColors.error),
                          ),
                        ],
                      ),
                    ),
                    const _IncidentBadge(),
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  incident.timeRange,
                  style: const TextStyle(fontSize: 12, color: AppColors.onSurfaceVariant),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _IncidentBadge extends StatelessWidget {
  const _IncidentBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: AppColors.errorContainer.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(32),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.warning_amber_rounded, size: 10, color: AppColors.error),
          SizedBox(width: 4),
          Text(
            'MISS',
            style: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.w900,
              color: AppColors.error,
              letterSpacing: -0.5,
            ),
          ),
        ],
      ),
    );
  }
}
