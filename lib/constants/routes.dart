
import 'package:go_router/go_router.dart';

import '../view/home/HomeView.dart';

final routeConfig = GoRouter(

  initialLocation: "/home",
  routes: [
    GoRoute(
      path: "/home",
      builder: (context, state) => const HomeView(),
    )
  ]
);