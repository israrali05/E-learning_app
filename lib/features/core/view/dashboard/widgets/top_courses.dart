import 'package:flutter/material.dart';

import '../../../../../res/assets/image_assets.dart';
import '../../../model/dashboard/courses_model.dart';

class DashboardTopCourses extends StatelessWidget {
  const DashboardTopCourses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final list = DashboardBannerModel.list;
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index)=> SizedBox(
          width: 320,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(right: 10, top: 13),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(list[index].heading,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
                        ),
                      ),
                      const Flexible(child: Image(image: AssetImage(ImageAssets.coursesDashboardImage), height: 110,))
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(13),
                          ),
                          child: const Icon(Icons.play_arrow)),
                      const SizedBox(height: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(list[index].subheading,
                              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700)
                          ),
                          const Text('Pragramming Lamguages',
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
