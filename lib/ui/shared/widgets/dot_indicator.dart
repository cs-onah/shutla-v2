import 'package:flutter/material.dart';
import 'package:shutla_v2/core/utils/context_extension.dart';

class DotIndicator extends StatefulWidget {
  final int selectedIndex;
  const DotIndicator({super.key, this.selectedIndex = 0});
  @override
  State<DotIndicator> createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 0; i < 3; i++)
            i == widget.selectedIndex ? selected : circle,
        ],
      ),
    );
  }

  Widget get selected => Container(
        width: 24,
        height: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: context.primaryColor,
        ),
      );

  Widget get circle => Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: context.primaryColor.withOpacity(.2),
        ),
      );
}
