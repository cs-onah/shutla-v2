import 'package:flutter/material.dart';
import 'package:shutla_v2/core/constants/route_names.dart';
import 'package:shutla_v2/core/constants/svg_path.dart';
import 'package:shutla_v2/core/utils/context_extension.dart';
import 'package:shutla_v2/ui/features/onboarding/pages/login_screen.dart';
import 'package:shutla_v2/ui/shared/widgets/app_bg.dart';
import 'package:shutla_v2/ui/shared/widgets/dot_indicator.dart';
import 'package:shutla_v2/ui/shared/widgets/dual_widget.dart';
import 'package:shutla_v2/ui/shared/widgets/svg_render_widget.dart';

class OnboardingData {
  final String title, description, assetPath;
  OnboardingData({
    this.title = "",
    this.description = "",
    required this.assetPath,
  });
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int page = 0;
  final controller = PageController();

  List<OnboardingData> data = [
    OnboardingData(
      title: "Locate Station in minutes",
      description: "Using our advanced navigation system, "
          "you can easily see all bus stations available and be "
          "directed to a bus station closest to you.",
      assetPath: SvgPath.userMap,
    ),
    OnboardingData(
      title: "Effortless & Reliable Bus Tracking",
      description:
          "Our system provides the real time location feed of approaching drivers,"
          "as well as information about their vehicle and estimated time of arrival.",
      assetPath: SvgPath.mapDark,
    ),
    OnboardingData(
      title: "View Journey History",
      description:
          "You can revisit older trips to get driver information as well as other information"
          " relating to the trip. This is a great way to recover items lost on transit.",
      assetPath: SvgPath.logs,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AppBg(
      body: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: DualWidget.nullable(
            value: page != 0,
            trueWidget: BackButton(onPressed: moveToPrevious),
          ),
          actions: [
            TextButton(
              onPressed: () => context.pushNamed(RouteNames.loginScreen),
              child: Text("Skip"),
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: controller,
                    onPageChanged: (page) => setState(() => this.page = page),
                    children: data.map((data) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxHeight: context.height * 0.33,
                            ),
                            child: Stack(
                              children: [
                                SvgRenderWidget(svgPath: SvgPath.onboardBg),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: SvgRenderWidget(svgPath: data.assetPath),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 40),
                                Text(data.title,
                                    style: context.textTheme.displayLarge),
                                const SizedBox(height: 30),
                                Text(data.description),
                              ],
                            ),
                          )
                        ],
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    DotIndicator(selectedIndex: page),
                    Spacer(),
                    Circle(onPressed: moveToNext, currentValue: page + 1),
                  ],
                ),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }

  moveToNext() {
    if (controller.page! >= data.length - 1) {
      context.pushNamed(RouteNames.loginScreen);
    }
    return controller.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }

  moveToPrevious() => controller.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.linear,
      );
}

class Circle extends StatelessWidget {
  final VoidCallback? onPressed;
  final int currentValue;

  const Circle({
    super.key,
    this.onPressed,
    required this.currentValue,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 60,
          width: 60,
          child: CircularProgressIndicator(
            value: currentValue / 3,
            backgroundColor: context.primaryColor.withOpacity(.2),
          ),
        ),
        IconButton(
          onPressed: onPressed,
          icon: Icon(Icons.arrow_forward_ios, color: context.colors.white),
          style: IconButton.styleFrom(backgroundColor: context.primaryColor),
        ),
      ],
    );
  }
}
