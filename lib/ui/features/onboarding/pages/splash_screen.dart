import 'package:flutter/material.dart';
import 'package:shutla_v2/core/constants/image_path.dart';
import 'package:shutla_v2/core/utils/context_extension.dart';
import 'package:shutla_v2/ui/shared/widgets/image_render_widget.dart';
import 'package:my_widgets/my_widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
      () => context.pushAndRemoveUntilMasterPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.primaryColor,
      body: Center(
        child: SlideOpacityTransition(
          duration: Duration(milliseconds: 700),
          child: ImageRenderWidget.asset(
            imagePath: ImagePath.splashAsset,
          ),
        ),
      ),
    );
  }
}
