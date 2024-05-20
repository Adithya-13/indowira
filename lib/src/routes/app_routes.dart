import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:indowira/src/core/core.dart';
import 'package:indowira/src/routes/routes.dart';

enum Routes {
  splash,
  login,
  register,
  home,
  detail,
  favorite,
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      navigatorKey: navigatorKey,
      debugLogDiagnostics: true,
      initialLocation: '/splash',
      routerNeglect: true,
      redirect: (context, state) {
        // // if the user is not logged in, they need to login
        // final loggedIn = ref.read(hiveServiceProvider).getUser() != null;
        // final loggingIn = state.subloc == '/login';
        // if (!loggedIn) return loggingIn ? null : '/login';

        // // if the user is logged in but still on the login page, send them to
        // // the home page
        // if (loggingIn) return '/home';

        // // no need to redirect at all
        return null;
      },
      redirectLimit: 1,
      routes: [
        GoRoute(
          path: '/splash',
          name: Routes.splash.name,
          builder: (context, state) => const SplashPage(),
        ),
        GoRoute(
          path: '/register',
          name: Routes.register.name,
          builder: (context, state) => const RegisterPage(),
        ),
        GoRoute(
          path: '/login',
          name: Routes.login.name,
          builder: (context, state) => const LoginPage(),
        ),
      ],
      errorBuilder: (context, state) => ErrorPage(
        error: state.error,
      ),
    );
  },
);
