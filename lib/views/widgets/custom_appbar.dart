import 'package:flutter/material.dart';
import '../../config/colors/colors.dart';

PreferredSizeWidget customAppBar(
    {double? leadingWidth, Widget? leading, String ? title, List<Widget>? actions,TextStyle? style,bool? centerTitle}) {
  return AppBar(leadingWidth: leadingWidth,
    elevation: 0,
    leading: leading,
    backgroundColor: AppColors.primaryColor,
    title: Text(
      title.toString(),
      style: style,
    ),
    centerTitle: centerTitle,
    actions: actions,
  );
}


