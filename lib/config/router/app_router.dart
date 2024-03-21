import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        name: HomeScreen.name),
    GoRoute(
        path: '/buttons',
        builder: (context, state) => const ButtonScreen(),
        name: ButtonScreen.name),
    GoRoute(
        path: '/cards',
        builder: (context, state) => const CardsScreen(),
        name: CardsScreen.name),
    GoRoute(
        path: '/progress',
        builder: (context, state) => const ProgressScreen(),
        name: ProgressScreen.name),
         GoRoute(
        path: '/snackbars',
        builder: (context, state) => const SnackbarScreen(),
        name: SnackbarScreen.name),
          GoRoute(
        path: '/animated',
        builder: (context, state) => const AnimatedScreen(),
        name: AnimatedScreen.name),
  ],
);
