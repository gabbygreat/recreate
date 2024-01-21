part of 'controller.dart';

class SetupView extends StatelessView<SetupScreen, SetupController> {
  const SetupView(super.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.bg,
        leadingWidth: MediaQuery.sizeOf(context).width,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                child: LinearSlider(),
              ),
              15.horizontalSpace,
              Text(
                '5/6',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        children: [
          10.verticalSpace,
          ...[
            Text(
              "What interests you?",
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Select all that applies",
              style: TextStyle(
                fontSize: 13.sp,
                color: AppColor.darkGrey,
                fontWeight: FontWeight.w600,
              ),
            ),
          ].animate(interval: 400.ms).fade(duration: 300.ms),
          22.verticalSpace,
          Wrap(
            spacing: 9.w,
            runSpacing: 9.h,
            children: controller.setupChips
                .map(
                  (e) => SetupChip(
                    selected: e.selected,
                    text: e.text,
                  ),
                )
                .toList()
                .animate(interval: 100.ms)
                .scale(duration: 200.ms),
          ),
          15.verticalSpace,
          Align(
            alignment: Alignment.centerLeft,
            child: SetupChip(
              selected: true,
              text: 'Add other +',
              onTap: () async {
                String? text;
                await showModalBottomSheet(
                  context: context,
                  showDragHandle: true,
                  builder: (context) =>
                      StatefulBuilder(builder: (context, rebuild) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: TextField(
                            onChanged: (value) {
                              text = value;
                              rebuild(() {});
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                            ),
                          ),
                        ),
                        30.verticalSpace,
                        AppButton(
                          text: 'Add ${text ?? ''}',
                          onTap: () =>
                              Navigator.of(context, rootNavigator: true).pop(),
                        )
                      ],
                    );
                  }),
                );
                if (text != null && text?.isNotEmpty == true) {
                  controller.setupChips.add(
                    SetupChipModel(selected: true, text: text!),
                  );
                  controller.rebuild();
                }
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppButton(
            text: 'Continue',
            onTap: () => context.goNamed(MainScreen.name),
          ),
          15.verticalSpace,
          TextButton(
            onPressed: () => context.goNamed(MainScreen.name),
            child: Text(
              'Skip for now',
              style: TextStyle(
                color: AppColor.primary,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          40.verticalSpace,
        ].animate(interval: 300.ms).fadeIn(delay: 3.seconds).then().moveY(),
      ),
    );
  }
}
