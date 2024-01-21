import 'package:recreate/utils/utils.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final void Function(int) onTap;
  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  late int currentIndex;
  final _currentIndex = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    currentIndex = widget.currentIndex;
  }

  Widget icons({
    required String svg,
    required String inActiveSvg,
    required String text,
    required int index,
  }) {
    return InkWell(
      onTap: () => onChanged(index),
      child: ValueListenableBuilder(
        valueListenable: _currentIndex,
        builder: (context, index_, _) {
          return Column(
            children: [
              if (index_ == index)
                Animate(
                  effects: const [ScaleEffect()],
                  child: Container(
                    height: 4.h,
                    width: 38.h,
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.r),
                        bottomRight: Radius.circular(10.r),
                      ),
                    ),
                  ),
                ),
              8.verticalSpace,
              if (index_ == index)
                SvgPicture.asset(
                  svg,
                ).animate().shake().then().moveY(begin: -5)
              else
                SvgPicture.asset(
                  inActiveSvg,
                ),
              Animate(
                effects: [
                  if (index_ == index) ...[
                    const MoveEffect(),
                    const ScaleEffect()
                  ]
                ],
                child: Text(
                  text,
                  style: TextStyle(
                    color: index_ == index ? AppColor.primary : AppColor.grey,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void onChanged(int index) {
    _currentIndex.value = index;
    widget.onTap(index);
  }

  @override
  void dispose() {
    _currentIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    currentIndex = widget.currentIndex;
    return Container(
      height: 65.h,
      color: AppColor.bg,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          icons(
            svg: AppSvg.homeActive,
            inActiveSvg: AppSvg.homeInactive,
            text: 'Home',
            index: 0,
          ),
          icons(
            svg: AppSvg.lessonActive,
            inActiveSvg: AppSvg.lessonInactive,
            text: 'Lesson',
            index: 1,
          ),
          icons(
            svg: AppSvg.exerciseActive,
            inActiveSvg: AppSvg.exerciseInactive,
            text: 'Exercises',
            index: 2,
          ),
          icons(
            svg: AppSvg.gamesActive,
            inActiveSvg: AppSvg.games,
            text: 'Games',
            index: 3,
          ),
          icons(
            svg: AppSvg.chatsActive,
            inActiveSvg: AppSvg.chatInactive,
            text: 'Chats',
            index: 4,
          ),
        ],
      ),
    );
  }
}
