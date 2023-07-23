import 'package:flutter/material.dart';

import '../../model/on_boarding/model_on_boarding.dart';



class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image), height: size.height * 0.4,),
          Column(
            children: [
              Text(model.title,
                style:  const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  textAlign: TextAlign.center),
              Text(
                model.subTitle,
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(model.counterText, style:  const TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
          const SizedBox(height: 50,),
        ],
      ),
    );
  }
}