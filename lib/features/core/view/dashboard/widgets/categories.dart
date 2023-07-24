import 'package:flutter/material.dart';

import '../../../model/dashboard/categories_model.dart';

class DashboardCategories extends StatelessWidget {
  const DashboardCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategoriesModel.list;
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index)=>SizedBox(
          height: 50,
          width: 150,
          child: Row(
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child:  Center(
                    child: Text(
                      list[index].title,
                      style: const TextStyle(color: Colors.white),
                    )),
              ),
              const SizedBox(width: 5,),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(list[index].heading, style: Theme.of(context).textTheme.titleSmall, overflow: TextOverflow.ellipsis,),
                    Text(list[index].subheading,style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis,),

                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
