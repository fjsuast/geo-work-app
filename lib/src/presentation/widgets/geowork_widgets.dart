import 'dart:ui';

import 'package:flutter/material.dart';

import '../core/app_theme.dart';

class SignatureTopBar extends StatelessWidget implements PreferredSizeWidget {
  const SignatureTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.8),
            border: Border(
              bottom: BorderSide(color: AppColors.outlineVariant.withValues(alpha: 0.3), width: 1),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: SafeArea(
            bottom: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppColors.outlineVariant.withValues(alpha: 0.3)),
                      ),
                      child: const Text(
                        'A',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'Geo Work',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -0.05,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_none_outlined, color: AppColors.onSurfaceVariant),
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.surfaceContainerHigh.withValues(alpha: 0.5),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class GeoworkNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const GeoworkNavBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.8),
            border: Border(top: BorderSide(color: AppColors.outlineVariant.withValues(alpha: 0.3), width: 1)),
          ),
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 1,
            bottom: MediaQuery.of(context).padding.bottom,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _GeoworkNavItem(
                index: 0,
                icon: Icons.home_outlined,
                label: 'Home',
                isSelected: currentIndex == 0,
                onTap: (c) => onTap(0),
              ),
              _GeoworkNavItem(
                index: 1,
                icon: Icons.history_outlined,
                label: 'History',
                isSelected: currentIndex == 1,
                onTap: (c) => onTap(1),
              ),
              _GeoworkNavItem(
                index: 2,
                icon: Icons.payments_outlined,
                label: 'Payroll',
                isSelected: currentIndex == 2,
                onTap: (c) => onTap(2),
              ),
              _GeoworkNavItem(
                index: 3,
                icon: Icons.beach_access_outlined,
                label: 'Vacations',
                isSelected: currentIndex == 3,
                onTap: (c) => onTap(3),
              ),
              _GeoworkNavItem(
                index: 4,
                icon: Icons.person_outline,
                label: 'Profile',
                isSelected: currentIndex == 4,
                onTap: (c) => onTap(4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _GeoworkNavItem extends StatelessWidget {
  final int index;
  final IconData icon;
  final String label;
  final bool isSelected;
  final ValueChanged<int> onTap;

  const _GeoworkNavItem({
    required this.index,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => onTap(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: isSelected
            ? BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppColors.primary, AppColors.primaryContainer],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primary.withValues(alpha: 0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              )
            : null,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: isSelected ? Colors.white : AppColors.onSurfaceVariant.withValues(alpha: 0.6)),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : AppColors.onSurfaceVariant.withValues(alpha: 0.6),
                fontSize: 10,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TonalCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;
  final bool showBorder;

  const TonalCard({
    super.key,
    required this.child,
    this.color,
    this.padding,
    this.borderRadius,
    this.showBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color ?? AppColors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(borderRadius ?? 24),
        border: showBorder
            ? Border.all(color: AppColors.outlineVariant.withValues(alpha: 0.3), width: 1)
            : null,
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.04),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: child,
    );
  }
}
