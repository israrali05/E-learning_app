import 'package:flutter/material.dart';

import '../../../../../res/assets/image_assets.dart';

class DashboardBanner extends StatelessWidget {
  const DashboardBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(child: Image(image: AssetImage(ImageAssets.saveDashboardImage), height: 22,)),
                      Flexible(child: Image(image: AssetImage(ImageAssets.noteDashboardImage), height: 50)),
                    ],
                  ),
                  SizedBox(height: 50,),
                  Text('Andriod For Beginner', maxLines: 2, style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w900,
                    overflow: TextOverflow.ellipsis,
                  ),),
                  Text('10 Lessons'),
                ],
              ),
            )
        ),
        const SizedBox(width: 10,),
        Expanded(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(child: Image(image: AssetImage(ImageAssets.saveDashboardImage), height: 22,)),
                          Flexible(child: Image(image: AssetImage(ImageAssets.noteDashboardImage), height: 50)),
                        ],
                      ),
                      SizedBox(height: 25,),
                      Text('JAVA', maxLines: 2, style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w900,
                        overflow: TextOverflow.ellipsis,
                      ),),
                      Text('10 Lessons'),

                    ],
                  ),
                ),
                SizedBox(
                  height: 46,
                  width: double.infinity,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          )
                      ),
                      onPressed: (){}, child: const Text('View All', style: TextStyle(fontSize: 16),)),
                ),

              ],
            )
        ),
      ],
    );
  }
}
