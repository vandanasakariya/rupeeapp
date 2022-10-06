import 'package:flutter/material.dart';
import 'package:rupeeapp/utils/size_utils/size_utils.dart';
import 'package:sizer/sizer.dart';

class CustomContainer extends StatelessWidget {
  final double? height;
  final AlignmentGeometry? alignment;
  final double? width;
  final Decoration? decoration;
  final Color? color;
  final EdgeInsetsGeometry? margin;
  final Widget? child;

  const CustomContainer({
    Key? key,
    this.height,
    this.alignment,
    this.width,
    this.decoration,
    this.color,
    this.child,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeUtils.verticalBlockSize * 16,
      width: SizeUtils.horizontalBlockSize * 43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.h),
        boxShadow: [
          BoxShadow(color: Colors.blue.shade900),
        ],
      ),
      alignment: alignment,
      color: color,
      child: child,
      margin: margin,
    );
  }
}
