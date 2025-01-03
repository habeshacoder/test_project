import 'package:go_router/go_router.dart';
import 'package:test_project/presentation/screen/home/home_screen.dart';
import 'package:test_project/presentation/screen/login/login_screen.dart';

class RouteName {
  static const home = 'home_screen';
  static const login = 'login_screen';
}

class MyAppRouter {
  static final MyAppRouter instance = MyAppRouter._internal();

  factory MyAppRouter() => instance;

  MyAppRouter._internal();

  final GoRouter router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/home',
        name: RouteName.home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/login',
        name: RouteName.login,
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );
}
