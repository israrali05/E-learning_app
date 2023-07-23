import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget(
      {Key? key,
      required this.subtitle,
      required this.title,
      required this.image,
        this.imageHeight = 0.25,
        this.align,
      this.crossAxisAlignment = CrossAxisAlignment.start})
      : super(key: key);

  final String title, image, subtitle;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? align;
  final double imageHeight;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(
          image: AssetImage(
            image,
          ),
          height: size.height * imageHeight,
        ),
        Text(
          title,
          textAlign: align,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ),
        Text(
          subtitle,
          textAlign: align,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
