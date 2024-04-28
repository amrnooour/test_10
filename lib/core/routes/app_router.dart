import 'package:go_router/go_router.dart';
import 'package:test_10/feature/second.dart';
import 'package:test_10/feature/splash.dart';


final GoRouter router =GoRouter(routes: [
GoRoute(path: "/",builder: (context, state) => const Splash(),),
GoRoute(path: "/second",builder: (context, state) => const SecondPage(),),
]);