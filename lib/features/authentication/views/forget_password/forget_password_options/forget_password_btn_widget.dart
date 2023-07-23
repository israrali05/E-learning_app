import 'package:flutter/material.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  const ForgetPasswordBtnWidget({
    super.key,
    required this.title,
    required this.iconData,
    required this.subTitle,
    required this.onTap
  });
  final IconData iconData;
  final String title, subTitle;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade200
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(iconData, size: 50,),
            const SizedBox(width: 5,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800)),
                Text(subTitle)
              ],
            )
          ],
        ),
      ),
    );
  }
}