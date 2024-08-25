import 'package:flutter/material.dart';

import '../../config/components/text_style.dart';

Widget customSearchBar({ Color ? bgColor,BoxBorder? border, required String hintText}){
  return Container(
    decoration: BoxDecoration(
  color: bgColor,
      borderRadius: BorderRadius.circular(15),
      border: border
    ),
    child: TextFormField(
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          prefixIcon: Icon(Icons.search_outlined, color: Colors.black.withOpacity(0.2,),size: 32,),
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          hintStyle: textStyle(color: Colors.black.withOpacity(0.4))),
    ),
  );
}