import 'package:auto_route/auto_route.dart';
import 'package:health_app/first_screen.dart';
import 'package:health_app/screens/deatail_screen.dart';
import 'package:health_app/screens/home_screen.dart';
import 'package:health_app/screens/main_home_screen.dart';
import 'package:health_app/screens/profile_screen.dart';
import 'package:health_app/screens/result_screen.dart';
import 'package:health_app/screens/user_screen.dart';
import 'package:health_app/second_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /* AutoRoute(page: FirstRoute.page, initial: true),
        AutoRoute(page: SecondRoute.page, initial: false), */
        AutoRoute(page: MyHomeRoute.page, initial: true),
        AutoRoute(page: MainRoute.page),
        AutoRoute(page: DeatailRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: UserInfoRoute.page)

        /// routes go here
      ];
} /* dart run build_runner build watch -d */
