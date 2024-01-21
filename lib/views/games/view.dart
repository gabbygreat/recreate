part of 'controller.dart';

class GamesView extends StatelessView<GamesScreen, GamesController> {
  const GamesView(super.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ComingSoon(),
    );
  }
}
