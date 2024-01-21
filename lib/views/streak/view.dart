part of 'controller.dart';

class StreakView extends StatelessView<StreakScreen, StreakController> {
  const StreakView(super.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: AppColor.primary,
        ),
        backgroundColor: AppColor.bg,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: [
          Center(
            child: Stack(
              children: [
                SvgPicture.asset(AppSvg.inactiveSpeak),
                Text(
                  "2",
                  style: TextStyle(
                    fontSize: 128.sp,
                    color: AppColor.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ).animate().shimmer(),
          ),
          15.verticalSpace,
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "days streak  ",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Hero(
                  tag: 'fire',
                  flightShuttleBuilder: (BuildContext flightContext,
                          Animation<double> animation,
                          HeroFlightDirection flightDirection,
                          BuildContext fromHeroContext,
                          BuildContext toHeroContext) =>
                      Material(
                    color: Colors.transparent,
                    child: toHeroContext.widget,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 9.h),
                    child: Image.asset(
                      AppGif.fire,
                      width: 50,
                      height: 50,
                    ),
                  ),
                )
              ],
            ),
          ),
          60.verticalSpace,
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 25.h,
              horizontal: 10.w,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: AppColor.grey1,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Mon",
                          style: TextStyle(
                            color: AppColor.primary,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SvgPicture.asset(
                          AppSvg.activeSpeak,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Tue",
                          style: TextStyle(
                            color: AppColor.primary,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SvgPicture.asset(
                          AppSvg.activeSpeak,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Wed",
                          style: TextStyle(
                            color: AppColor.darkGrey,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SvgPicture.asset(
                          AppSvg.inactiveSpeak,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Thu",
                          style: TextStyle(
                            color: AppColor.darkGrey,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SvgPicture.asset(
                          AppSvg.inactiveSpeak,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Fri",
                          style: TextStyle(
                            color: AppColor.darkGrey,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SvgPicture.asset(
                          AppSvg.inactiveSpeak,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Sat",
                          style: TextStyle(
                            color: AppColor.darkGrey,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SvgPicture.asset(
                          AppSvg.inactiveSpeak,
                        ),
                      ],
                    ),
                  ],
                ),
                25.verticalSpace,
                Text(
                  'You’re on a roll, great job! Practice each day to keep up with your streak and earn XP points.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppButton(
            text: 'Continue',
            onTap: () => context.pop(),
          ),
          15.verticalSpace,
          TextButton(
            onPressed: () {},
            child: Text(
              'Share',
              style: TextStyle(
                color: AppColor.primary,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          40.verticalSpace,
        ].animate(interval: 300.ms).fadeIn().then().moveY(),
      ),
    );
  }
}
