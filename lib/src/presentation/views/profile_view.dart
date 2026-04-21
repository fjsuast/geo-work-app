import 'package:flutter/material.dart';

import '../core/app_theme.dart';
import '../widgets/geowork_widgets.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Header Section
          const _ProfileHeader(),
          const SizedBox(height: 40),

          // Personal Information Bento-ish Grid
          const Text(
            'PERSONAL INFORMATION',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.5,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 24),
          const _InfoCard(label: 'Email Address', value: 'a.martinez@geowork.com'),
          const SizedBox(height: 16),
          const _InfoCard(label: 'Phone Number', value: '+1 (555) 012-3456'),
          const SizedBox(height: 16),
          const _InfoCard(label: 'Location', value: 'Madrid, Spain (Central HQ)'),
          const SizedBox(height: 40),

          // Employment Details
          const Text(
            'EMPLOYMENT DETAILS',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.5,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 24),
          _EmploymentDetailsCard(),
          const SizedBox(height: 40),

          // Security & Actions
          _ActionCard(icon: Icons.lock, label: 'Change Password', onTap: () {}, showTrailing: true),
          const SizedBox(height: 16),
          _LogoutButton(onTap: () {}),
        ],
      ),
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Alejandro Martínez',
          style: TextStyle(
            fontSize: 30, // closest to text-3xl
            fontWeight: FontWeight.w900, // font-extrabold
            letterSpacing: -1,
            color: AppColors.onSurface,
            height: 1.1,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'SENIOR OPERATIONS MANAGER',
          style: TextStyle(
            fontSize: 12, // closest to text-xs
            fontWeight: FontWeight.w800, // font-bold
            letterSpacing: 1.2, // tracking-[0.1em]
            color: AppColors.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 24),
        Container(
          height: 4, // h-1
          width: 48, // w-12
          decoration: BoxDecoration(
            color: AppColors.primaryContainer,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ],
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String label;
  final String value;

  const _InfoCard({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return TonalCard(
      padding: const EdgeInsets.all(24),
      borderRadius: 16, // rounded-xl
      showBorder: false,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label.toUpperCase(),
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w800,
                letterSpacing: 1.5,
                color: AppColors.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.w600, // font-medium in HTML translates well to w500/w600 in mobile
                fontSize: 16,
                color: AppColors.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EmploymentDetailsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(24), // rounded-2xl
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'EMPLOYEE ID',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.5,
                            color: AppColors.onSurfaceVariant,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'GEOWORK-99281',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700, // font-semibold
                            color: AppColors.onSurface,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'JOINED DATE',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.5,
                            color: AppColors.onSurfaceVariant,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'March 12, 2018',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.onSurface,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: AppColors.outlineVariant.withValues(alpha: 0.1), width: 1),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'DEPARTMENT',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1.5,
                                color: AppColors.onSurfaceVariant,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Global Operations',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColors.onSurface,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'REPORT TO',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1.5,
                                color: AppColors.onSurfaceVariant,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Elena Richardson',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColors.onSurface,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool showTrailing;

  const _ActionCard({
    required this.icon,
    required this.label,
    required this.onTap,
    this.showTrailing = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surfaceContainerLowest,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(20), // p-5
          child: Row(
            children: [
              Icon(icon, color: AppColors.primary, size: 24),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  label,
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    color: AppColors.onSurface,
                    fontSize: 16,
                  ),
                ),
              ),
              if (showTrailing) const Icon(Icons.chevron_right, color: AppColors.outlineVariant),
            ],
          ),
        ),
      ),
    );
  }
}

class _LogoutButton extends StatelessWidget {
  final VoidCallback onTap;

  const _LogoutButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFFEE2E2), // #fee2e2 light red
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.logout, color: Color(0xFFDC2626), size: 22), // #dc2626
              SizedBox(width: 12),
              Text(
                'LOGOUT SYSTEM',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Color(0xFFDC2626),
                  fontSize: 14,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
