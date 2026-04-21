import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/backoffice/data/http/app_http_dio.dart';
import 'src/backoffice/services/attendance_service.dart';
import 'src/backoffice/services/payroll_service.dart';
import 'src/presentation/blocs/attendance_cubit.dart';
import 'src/presentation/blocs/payroll_cubit.dart';
import 'src/presentation/core/app_router.dart';
import 'src/presentation/core/app_theme.dart';
import 'src/presentation/views/history_view.dart';
import 'src/presentation/views/home_view.dart';
import 'src/presentation/views/payroll_view.dart';
import 'src/presentation/views/profile_view.dart';
import 'src/presentation/views/vacations_view.dart';
import 'src/presentation/widgets/geowork_widgets.dart';

void main() {
  // 1. Setup Data Layer
  final dio = Dio();
  final http = AppHttpDio(baseUrl: 'https://api.geowork.com', dio: dio);

  // 2. Setup Services
  final attendanceService = AttendanceService(http);
  final payrollService = PayrollService(http);

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: attendanceService),
        RepositoryProvider.value(value: payrollService),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AttendanceCubit(attendanceService)..loadAttendance()),
          BlocProvider(create: (context) => PayrollCubit(payrollService)..loadPayroll()),
        ],
        child: const GeoWorkApp(),
      ),
    ),
  );
}

class GeoWorkApp extends StatelessWidget {
  const GeoWorkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Geo Work',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routerConfig: appRouter,
    );
  }
}

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _currentIndex = 0; // Default to Payroll
  final PageController _pageController = PageController(initialPage: 0);

  final List<Widget> _views = [
    const HomeView(),
    const HistoryView(),
    const PayrollView(),
    const VacationsView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: const SignatureTopBar(),
      body: PageView.builder(
        itemCount: _views.length,
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        itemBuilder: (context, index) {
          return _views[index];
        },
      ),
      bottomNavigationBar: GeoworkNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
