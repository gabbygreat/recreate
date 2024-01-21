part of 'controller.dart';

class LessonView extends StatelessView<LessonScreen, LessonController> {
  const LessonView(super.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerScroll) {
            return [
              SliverAppBar(
                floating: true,
                pinned: true,
                backgroundColor: AppColor.bg,
                elevation: 0,
                expandedHeight: 150.h,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    children: [
                      80.verticalSpace,
                      SectionTab(
                        showAvatar: false,
                        width: MediaQuery.sizeOf(context).width * 0.75,
                      ),
                    ],
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size(
                    MediaQuery.sizeOf(context).width,
                    50.h,
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 25.w),
                    padding: EdgeInsets.all(5.w),
                    height: 48.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.grey,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: TabBar(
                      overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent,
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Colors.white,
                      dividerHeight: 0,
                      unselectedLabelColor: AppColor.grey,
                      labelStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      unselectedLabelStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      indicator: BoxDecoration(
                        color: AppColor.primary,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      tabs: const [
                        Tab(
                          text: 'Audio Lesson',
                        ),
                        Tab(
                          text: 'Video Lesson',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              AudioLesson(),
              VideoLesson(),
            ],
          ),
        ),
      ),
    );
  }
}
