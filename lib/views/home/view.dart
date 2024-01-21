part of 'controller.dart';

class HomeView extends StatelessView<HomeScreen, HomeController> {
  const HomeView(super.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: controller.scrollController,
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 200.h,
              floating: true,
              backgroundColor: AppColor.bg,
              pinned: true,
              forceElevated: innerBoxIsScrolled,
              flexibleSpace: ValueListenableBuilder(
                valueListenable: controller.offset,
                builder: (context, offset, _) {
                  return FlexibleSpaceBar(
                    title: offset > 140
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 36.r,
                                height: 36.r,
                                decoration: const BoxDecoration(
                                  color: AppColor.lightPink,
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  AppImages.face,
                                ),
                              ),
                              10.horizontalSpace,
                              const Text(
                                'Your Learning Sphere',
                                style: TextStyle(
                                  color: AppColor.primary,
                                ),
                              ),
                            ],
                          ).animate().moveX()
                        : const SizedBox.shrink(),
                    collapseMode: CollapseMode.pin,
                    centerTitle: false,
                    background: SafeArea(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.w),
                        child: Column(
                          children: [
                            20.verticalSpace,
                            const SectionTab(),
                            38.verticalSpace,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Your\nLearning Sphere",
                                  style: TextStyle(
                                    color: AppColor.primaryLight,
                                    fontSize: 32,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10.h),
                                  child: SvgPicture.asset(
                                    AppSvg.grid,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ];
        },
        body: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          crossAxisSpacing: 30.w,
          mainAxisSpacing: 36.w,
          children: [
            const HomeCard(
              tag: 'reading',
              svg: AppSvg.reading,
              text: 'Reading',
              percent: 40,
            ),
            const HomeCard(
              tag: 'listening',
              svg: AppSvg.listening,
              text: 'Listening',
              percent: 100,
            ),
            const HomeCard(
              tag: 'writing',
              svg: AppSvg.writing,
              text: 'Writing',
              percent: 50,
            ),
            HomeCard(
              tag: 'speak',
              svg: AppSvg.speaking,
              text: 'Speaking',
              percent: 80,
              onTap: () => context.pushNamed(
                SpeakingScreen.name,
                extra: 80.0,
              ),
            ),
            const HomeCard(
              tag: 'books',
              svg: AppSvg.books,
              text: 'Books',
              percent: 30,
            ),
            const HomeCard(
              tag: 'quiz',
              svg: AppSvg.quiz,
              text: 'Quizzes',
              percent: 50,
            ),
          ],
        ),
      ),
    );
  }
}
