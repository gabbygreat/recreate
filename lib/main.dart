import 'utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Recreate',
          routerConfig: routes,
          theme: ThemeData(
            iconTheme: const IconThemeData(
              color: AppColor.primary,
            ),
            appBarTheme: const AppBarTheme(
              color: AppColor.bg,
            ),
            fontFamily: 'JosefinSans',
            scaffoldBackgroundColor: AppColor.bg,
            colorScheme: ColorScheme.fromSeed(
              seedColor: AppColor.primary,
            ),
            useMaterial3: true,
          ),
        );
      },
    );
  }
}
