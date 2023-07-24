import 'package:flutter/material.dart';

class DashboardCategories extends StatelessWidget {
  const DashboardCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
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
                  child: const Center(
                      child: Text(
                        'JS',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                const SizedBox(width: 5,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('JavaScript', style: Theme.of(context).textTheme.titleMedium, overflow: TextOverflow.ellipsis,),
                      Text('10 lessons',style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis,),

                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
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
                  child: const Center(
                      child: Text(
                        'JS',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                const SizedBox(width: 5,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('JavaScript', style: Theme.of(context).textTheme.titleMedium, overflow: TextOverflow.ellipsis,),
                      Text('10 lessons',style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis,),

                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
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
                  child: const Center(
                      child: Text(
                        'JS',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                const SizedBox(width: 5,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('JavaScript', style: Theme.of(context).textTheme.titleMedium, overflow: TextOverflow.ellipsis,),
                      Text('10 lessons',style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis,),

                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
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
                  child: const Center(
                      child: Text(
                        'JS',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                const SizedBox(width: 5,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('JavaScript', style: Theme.of(context).textTheme.titleMedium, overflow: TextOverflow.ellipsis,),
                      Text('10 lessons',style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis,),

                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
