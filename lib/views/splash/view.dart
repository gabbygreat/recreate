part of 'controller.dart';

class SplashView extends StatelessView<SplashScreen, SplashController> {
  const SplashView(super.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF000000),
              Color.fromRGBO(159, 79, 79, 0.85),
            ],
          ),
          image: DecorationImage(
            image: AssetImage(
              AppImages.splash,
            ),
            opacity: 0.05,
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Stack(
            children: [
              //SPEAK-SPHERE
              Align(
                alignment: const Alignment(0, -0.65),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      AppSvg.speak,
                    ).animate().moveX(),
                    20.horizontalSpace,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              AppImages.speak,
                            ),
                            Image.asset(
                              AppImages.sphere,
                            ),
                          ],
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              '...speak the world',
                              cursor: '',
                              textStyle: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                shadows: const [
                                  Shadow(
                                    color: AppColor.primary,
                                    blurRadius: 10,
                                  ),
                                  Shadow(
                                    color: Colors.white,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              speed: 100.ms,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ).animate().fadeIn(duration: controller.totalAnimationDuration),
              ),
              //SPIKE
              Align(
                alignment: const Alignment(1, -0.8),
                child: SvgPicture.asset(
                  AppSvg.spike,
                )
                    .animate()
                    .moveY(duration: controller.totalAnimationDuration)
                    .shake(),
              ),
              //MAN
              Align(
                alignment: const Alignment(-1, 0.3),
                child: SvgPicture.asset(
                  AppSvg.man,
                  width: MediaQuery.sizeOf(context).width * 0.6,
                ).animate().moveX(
                    begin: -15,
                    duration: controller.totalAnimationDuration * 0.6),
              ),
              //VOICE
              Align(
                alignment: const Alignment(-0.1, 0.2),
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      AppSvg.voice1,
                    )
                        .animate()
                        .fadeIn(delay: controller.totalAnimationDuration * 0.2),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: SvgPicture.asset(
                        AppSvg.voice2,
                      ),
                    )
                        .animate()
                        .fadeIn(delay: controller.totalAnimationDuration * 0.6),
                    SvgPicture.asset(
                      AppSvg.voice3,
                    )
                        .animate()
                        .fadeIn(delay: controller.totalAnimationDuration),
                  ],
                ),
              ),
              //GIRL
              Align(
                alignment: const Alignment(1, 0.6),
                child: SvgPicture.asset(
                  AppSvg.girl,
                ).animate().moveX(
                    begin: 15,
                    duration: controller.totalAnimationDuration * 0.6),
              ),
              //COMMENT
              Align(
                alignment: const Alignment(1, 0),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Stack(
                    alignment: const Alignment(1, 0),
                    children: [
                      SvgPicture.asset(
                        AppSvg.comment,
                      ),
                      Align(
                        alignment: const Alignment(0.7, -0.2),
                        child: Stack(
                          children: [
                            SvgPicture.asset(
                              AppSvg.comment1,
                            ).animate().fadeIn(
                                delay: controller.totalAnimationDuration),
                            SvgPicture.asset(
                              AppSvg.comment2,
                            ).animate().fadeIn(
                                delay: controller.totalAnimationDuration * 0.5),
                          ],
                        ),
                      ),
                    ],
                  ),
                ).animate().moveY(
                    begin: -10,
                    duration: controller.totalAnimationDuration * 0.6),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
