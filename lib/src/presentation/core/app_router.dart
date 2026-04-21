import 'package:go_router/go_router.dart';
import '../views/onboarding_view.dart';
import '../../../main.dart'; // To access MainScaffold, or we can move MainScaffold to its own file.

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: '/main',
      builder: (context, state) => const MainScaffold(),
    ),
  ],
);
