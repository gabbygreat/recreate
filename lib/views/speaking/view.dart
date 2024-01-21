part of 'controller.dart';

class SpeakingView extends StatelessView<SpeakingScreen, SpeakingController> {
  const SpeakingView(super.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ValueListenableBuilder(
          valueListenable: controller.percent,
          builder: (context, percent, _) {
            return LinearSlider(
              percent: percent,
              tag: 'speak',
            );
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Speak this sentence",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.darkGrey,
                  ),
                ),
                34.verticalSpace,
                Center(
                  child: Container(
                    height: 30.r,
                    width: 30.r,
                    decoration: const BoxDecoration(
                      color: AppColor.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AppSvg.speaker,
                      ),
                    ),
                  ),
                ),
                42.verticalSpace,
                Center(
                  child: Text(
                    "Bonjour, Buchi, enchante",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.darkGrey,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: ValueListenableBuilder(
                  valueListenable: controller.scale,
                  builder: (context, scale, _) {
                    return AnimatedScale(
                      duration: 0.6.seconds,
                      scale: scale.isOdd ? 0.8 : 1,
                      child: SvgPicture.asset(
                        AppSvg.mic,
                      ).animate().scale(delay: 1.seconds),
                    );
                  }),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Brilliant!",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: AppColor.darkGrey,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Meaning:",
                  style: TextStyle(
                    color: AppColor.darkGrey,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Hello, Buchi, nice to meet you.",
                  style: TextStyle(
                    color: AppColor.darkGrey,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                40.verticalSpace,
              ],
            )
          ].animate(interval: 400.ms).moveY().scale(),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppButton(
            text: 'Continue',
            onTap: () => context.pop(),
          ),
          20.verticalSpace,
        ],
      ),
    );
  }
}
