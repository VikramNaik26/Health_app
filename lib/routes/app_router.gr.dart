// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DeatailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DeatailPage(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    MyHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyHomePage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    ResultRoute.name: (routeData) {
      final args = routeData.argsAs<ResultRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ResultPage(
          key: args.key,
          nameController: args.nameController,
          ageController: args.ageController,
          weightController: args.weightController,
          heightController: args.heightController,
          activityController: args.activityController,
          temperatureController: args.temperatureController,
          gender: args.gender,
        ),
      );
    },
    UserInfoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserInfoPage(),
      );
    },
  };
}

/// generated route for
/// [DeatailPage]
class DeatailRoute extends PageRouteInfo<void> {
  const DeatailRoute({List<PageRouteInfo>? children})
      : super(
          DeatailRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeatailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyHomePage]
class MyHomeRoute extends PageRouteInfo<void> {
  const MyHomeRoute({List<PageRouteInfo>? children})
      : super(
          MyHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ResultPage]
class ResultRoute extends PageRouteInfo<ResultRouteArgs> {
  ResultRoute({
    Key? key,
    required TextEditingController nameController,
    required TextEditingController ageController,
    required TextEditingController weightController,
    required TextEditingController heightController,
    required TextEditingController activityController,
    required TextEditingController temperatureController,
    required String gender,
    List<PageRouteInfo>? children,
  }) : super(
          ResultRoute.name,
          args: ResultRouteArgs(
            key: key,
            nameController: nameController,
            ageController: ageController,
            weightController: weightController,
            heightController: heightController,
            activityController: activityController,
            temperatureController: temperatureController,
            gender: gender,
          ),
          initialChildren: children,
        );

  static const String name = 'ResultRoute';

  static const PageInfo<ResultRouteArgs> page = PageInfo<ResultRouteArgs>(name);
}

class ResultRouteArgs {
  const ResultRouteArgs({
    this.key,
    required this.nameController,
    required this.ageController,
    required this.weightController,
    required this.heightController,
    required this.activityController,
    required this.temperatureController,
    required this.gender,
  });

  final Key? key;

  final TextEditingController nameController;

  final TextEditingController ageController;

  final TextEditingController weightController;

  final TextEditingController heightController;

  final TextEditingController activityController;

  final TextEditingController temperatureController;

  final String gender;

  @override
  String toString() {
    return 'ResultRouteArgs{key: $key, nameController: $nameController, ageController: $ageController, weightController: $weightController, heightController: $heightController, activityController: $activityController, temperatureController: $temperatureController, gender: $gender}';
  }
}

/// generated route for
/// [UserInfoPage]
class UserInfoRoute extends PageRouteInfo<void> {
  const UserInfoRoute({List<PageRouteInfo>? children})
      : super(
          UserInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserInfoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
