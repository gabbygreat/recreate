part of 'controller.dart';

class MainView extends StatelessView<MainScreen, MainController> {
  const MainView(super.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller.currentIndex,
      builder: (context, index, _) {
        return Scaffold(
          body: controller.screens[index],
          bottomNavigationBar: CustomBottomNavBar(
            currentIndex: index,
            onTap: (value) => controller.currentIndex.value = value,
          ),
        );
      },
    );
  }
}
