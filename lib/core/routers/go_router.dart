import 'package:go_router/go_router.dart';
import 'package:task/core/routers/go_router_constant.dart';
import 'package:task/features/auth/presentation/views/login_view.dart';
import 'package:task/features/auth/presentation/views/register_view.dart';
GoRouter goRouter() {
  return GoRouter(routes: [
    GoRoute(
      path: loginScreen,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: registerScreen,
      builder: (context, state) => const RegisterView(),
    ),

  ]);
}
