import 'package:flutter/material.dart';
import 'package:shutla_v2/core/constants/image_path.dart';
import 'package:shutla_v2/core/utils/context_extension.dart';
import 'package:shutla_v2/ui/shared/widgets/image_render_widget.dart';

class AppBg extends StatelessWidget {
  final Widget body;
  const AppBg({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: context.scaffoldBackgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(),
              ImageRenderWidget.asset(imagePath: ImagePath.cardFlip),
              Spacer(),
              ImageRenderWidget.asset(imagePath: ImagePath.logoBg),
            ],
          ),
        ),
        body,
      ],
    );
  }
}