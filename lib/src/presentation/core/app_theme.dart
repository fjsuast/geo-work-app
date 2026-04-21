import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primary = Color(0xFF003670);
  static const Color primaryContainer = Color(0xFF1B4D8F);
  static const Color surface = Color(0xFFF8F9FA);
  static const Color onSurface = Color(0xFF191C1D);
  static const Color onSurfaceVariant = Color(0xFF434750);
  static const Color error = Color(0xFFBA1A1A);
  static const Color errorContainer = Color(0xFFFFDAD6);
  static const Color tertiary = Color(0xFF592A00);
  static const Color surfaceContainerLow = Color(0xFFF3F4F5);
  static const Color surfaceContainerLowest = Color(0xFFFFFFFF);
  static const Color surfaceContainerHigh = Color(0xFFE7E8E9);
  static const Color surfaceContainerHighest = Color(0xFFE1E3E4);
  static const Color primaryFixed = Color(0xFFD6E3FF);
  static const Color primaryFixedDim = Color(0xFFAAC7FF);
  static const Color outlineVariant = Color(0xFFC3C6D2);
  static const Color secondaryContainer = Color(0xFFCBE7F5);
  static const Color onSecondaryContainer = Color(0xFF4E6874);
  static const Color surfaceContainer = Color(0xFFEDEEEF);
  static const Color tertiaryFixed = Color(0xFFFFDCC6);
  static const Color onTertiaryFixedVariant = Color(0xFF713700);
  static const Color onPrimaryContainer = Color(0xFF9DC0FF);
  static const Color onPrimaryFixedVariant = Color(0xFF0F4688);
  static const Color onTertiaryContainer = Color(0xFFFFAC71);
  static const Color secondary = Color(0xFF48626E);
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        primaryContainer: AppColors.primaryContainer,
        surface: AppColors.surface,
        onSurface: AppColors.onSurface,
        onSurfaceVariant: AppColors.onSurfaceVariant,
        error: AppColors.error,
        errorContainer: AppColors.errorContainer,
        tertiary: AppColors.tertiary,
      ),
      textTheme: GoogleFonts.interTextTheme().copyWith(
        displaySmall: GoogleFonts.inter(
          color: AppColors.onSurface,
          fontWeight: FontWeight.w900,
          letterSpacing: -1,
        ),
        headlineSmall: GoogleFonts.inter(
          color: AppColors.primary,
          fontWeight: FontWeight.w900,
          letterSpacing: -1,
        ),
        titleLarge: GoogleFonts.inter(
          color: AppColors.onSurface,
          fontWeight: FontWeight.w900,
          letterSpacing: -0.5,
        ),
        titleMedium: GoogleFonts.inter(
          color: AppColors.onSurface,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: GoogleFonts.inter(
          color: AppColors.onSurface,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: GoogleFonts.inter(
          color: AppColors.onSurfaceVariant,
          fontWeight: FontWeight.w400,
        ),
        labelLarge: GoogleFonts.inter(
          color: AppColors.primary,
          fontWeight: FontWeight.w800,
          letterSpacing: 2,
        ),
      ),
      cardTheme: CardThemeData(
        color: AppColors.surfaceContainerLowest,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(
            color: AppColors.outlineVariant.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
      ),
      scaffoldBackgroundColor: AppColors.surface,
    );
  }
}
