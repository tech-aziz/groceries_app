import 'package:flutter/material.dart';
import '../../config/components/text_style.dart';

Widget customTopOffersItem({required String companyImg, required String companyName, required String offer,required String companyType,required void Function()? onTap}){
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 170,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              width: 1, color: Colors.grey.withOpacity(0.2))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  companyImg,
                  fit: BoxFit.cover,
                  height: 60,
                ),
              ],
            ),
            const Spacer(),
            Text(
              companyName,
              style: textStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: offer,
                      style: textStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17)),
                  const TextSpan(
                    text: ' Off',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            Text(
              companyType,
              style: textStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    ),
  );
}