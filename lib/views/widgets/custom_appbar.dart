import 'package:flutter/material.dart';
import '../../config/colors/colors.dart';

PreferredSizeWidget customAppBar(
    {double? leadingWidth, Widget? leading, String ? title, List<Widget>? actions,TextStyle? style}) {
  return AppBar(leadingWidth: leadingWidth,
    elevation: 0,
    leading: leading,
    backgroundColor: AppColors.primaryColor,
    title: Text(
      title.toString(),
      style: style,
    ),
    centerTitle: true,
    actions: actions,
  );
}


