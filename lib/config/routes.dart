import 'package:recreate/utils/utils.dart';

final GoRouter routes = GoRouter(
  initialLocation: SplashScreen.path,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: SplashScreen.path,
      name: SplashScreen.name,
      pageBuilder: (context, state) {
        return FadeTransitionPage(
          child: const SplashScreen(),
          key: state.pageKey,
        );
      },
    ),
    GoRoute(
      path: SetupScreen.path,
      name: SetupScreen.name,
      pageBuilder: (context, state) {
        return SlideTransitionPage(
          key: state.pageKey,
          child: const SetupScreen(),
        );
      },
    ),
    // StatefulShellRoute.indexedStack(
    //   pageBuilder: (context, state, navigationShell) {
    //     return FadeTransitionPage(
    //       key: state.pageKey,
    //       child: MainScreen(
    //         key: state.pageKey,
    //         child: navigationShell,
    //       ),
    //     );
    //   },
    //   branches: [
    //     StatefulShellBranch(
    //       routes: [
    //         GoRoute(
    //           path: HomeScreen.path,
    //           name: HomeScreen.name,
    //           builder: (context, state) {
    //             return HomeScreen(
    //               key: state.pageKey,
    //             );
    //           },
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       routes: [
    //         GoRoute(
    //           path: LessonScreen.path,
    //           name: LessonScreen.name,
    //           builder: (context, state) {
    //             return LessonScreen(
    //               key: state.pageKey,
    //             );
    //           },
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       routes: [
    //         GoRoute(
    //           path: ExerciseScreen.path,
    //           name: ExerciseScreen.name,
    //           builder: (context, state) {
    //             return ExerciseScreen(
    //               key: state.pageKey,
    //             );
    //           },
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       routes: [
    //         GoRoute(
    //           path: GamesScreen.path,
    //           name: GamesScreen.name,
    //           builder: (context, state) {
    //             return GamesScreen(
    //               key: state.pageKey,
    //             );
    //           },
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       routes: [
    //         GoRoute(
    //           path: ChatsScreen.path,
    //           name: ChatsScreen.name,
    //           builder: (context, state) {
    //             return ChatsScreen(
    //               key: state.pageKey,
    //             );
    //           },
    //         ),
    //       ],
    //     ),
    //   ],
    // ),
    GoRoute(
      path: MainScreen.path,
      name: MainScreen.name,
      pageBuilder: (context, state) {
        return FadeTransitionPage(
          child: const MainScreen(),
          key: state.pageKey,
        );
      },
    ),
    GoRoute(
      path: StreakScreen.path,
      name: StreakScreen.name,
      pageBuilder: (context, state) {
        return FadeTransitionPage(
          child: const StreakScreen(),
          key: state.pageKey,
        );
      },
    ),
    GoRoute(
      path: SpeakingScreen.path,
      name: SpeakingScreen.name,
      pageBuilder: (context, state) {
        double percent = state.extra! as double;
        return FadeTransitionPage(
          child: SpeakingScreen(
            percent: percent,
          ),
          key: state.pageKey,
        );
      },
    ),
  ],
);
