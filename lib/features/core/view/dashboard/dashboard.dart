import 'package:flutter/material.dart';
import 'package:untitled/res/assets/image_assets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -- App bar
      appBar: AppBar(
        // -- AppBar Text And Icon
        leading: const Icon(
          Icons.menu,
          size: 30,
          color: Colors.black,
        ),
        title: Text(
          'E-Learning',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          // -- User Profile
          Container(
            margin: const EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(20)),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // -- Heading Text
              const Text('Hey, Code With Israr'),
              const Text(
                'Explore Courses',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 30,
              ),

              // -- Search Box
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: const BoxDecoration(
                    border: Border(left: BorderSide(width: 4.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Serach...',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                    const Icon(Icons.mic)
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              // -- Courses Categories Row list
              SizedBox(
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
              ),
              const SizedBox(height: 30,),

            //  -- Banner Courses
              Row(
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
              ),
              const SizedBox(height: 15,),
              const Text('Top Courses',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900)),
              SizedBox(
                height: 200,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 13),
                        child: Container(
                          padding: EdgeInsets.all(10),
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
                                    child: Text('Flutter Crash Courses',
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Flexible(child: Image(image: AssetImage(ImageAssets.coursesDashboardImage), height: 110,))
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        backgroundColor: Colors.black,
                                        foregroundColor: Colors.white,
                                        padding: EdgeInsets.all(13),
                                      ),
                                      child: Icon(Icons.play_arrow)),
                                  SizedBox(height: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('3 Sections',
                                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)
                                      ),
                                      Text('Pragramming Lamguages',
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
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 13),
                        child: Container(
                          padding: EdgeInsets.all(10),
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
                                    child: Text('Flutter Crash Courses',
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Flexible(child: Image(image: AssetImage(ImageAssets.coursesDashboardImage), height: 110,))
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        backgroundColor: Colors.black,
                                        foregroundColor: Colors.white,
                                        padding: EdgeInsets.all(13),
                                      ),
                                      child: Icon(Icons.play_arrow)),
                                  SizedBox(height: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('3 Sections',
                                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)
                                      ),
                                      Text('Pragramming Lamguages',
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
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 13),
                        child: Container(
                          padding: EdgeInsets.all(10),
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
                                    child: Text('Flutter Crash Courses',
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Flexible(child: Image(image: AssetImage(ImageAssets.coursesDashboardImage), height: 110,))
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        backgroundColor: Colors.black,
                                        foregroundColor: Colors.white,
                                        padding: EdgeInsets.all(13),
                                      ),
                                      child: Icon(Icons.play_arrow)),
                                  SizedBox(height: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('3 Sections',
                                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)
                                      ),
                                      Text('Pragramming Lamguages',
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

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
