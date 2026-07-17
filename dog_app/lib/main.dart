import 'dart:math';
import 'package:dog_app/data/dummy_doctors.dart';
import 'core/exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bruno the Dog',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const MyHomePage(title: 'Bruno the Dog'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late ScrollController scrollController;

  void listner() {
    print('scrolling');
  }

  @override
  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double appBarHeight = MediaQuery.of(context).size.height * 0.1;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   toolbarHeight: 72,
        //   actionsPadding: AppInsets.allMd,
        //   title: Text(
        //     widget.title,
        //     style: Theme.of(context).textTheme.headlineSmall,
        //   ),
        //   actions: [CustomIcon(iconData: Icons.notifications_outlined)],
        // ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = MediaQuery.of(context).size.width;
            double screenHeight = MediaQuery.of(context).size.height;
            return Center(
              child: CustomScrollView(
                // scrollBehavior: MaterialScrollBehavior(),
                slivers: [
                  //app bar
                  SliverAppBar(
                    actions: [
                      CustomIcon(iconData: Icons.notifications_outlined),
                    ],
                    actionsPadding: AppInsets.allSm,
                    toolbarHeight: appBarHeight,
                    title: Text(
                      widget.title,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    flexibleSpace: FlexibleSpaceBar(
                      collapseMode: CollapseMode.pin,
                    ),
                  ),
                  // home card
                  SliverPadding(
                    padding: AppInsets.allMd,
                    sliver: SliverToBoxAdapter(child: HomeCard()),
                  ),
                  //Services
                  SliverToBoxAdapter(
                    child: Container(
                      // color: Colors.green,
                      height: screenHeight * 0.2,
                      child: Column(
                        mainAxisAlignment: .spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 4,
                            ),
                            child: Row(
                              mainAxisAlignment: .spaceBetween,
                              children: [
                                Text(
                                  'Services',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.headlineSmall,
                                ),
                                Text('See All'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: .spaceBetween,
                              children: [
                                ServicesCard(
                                  color: AppColors.boarding,
                                  text: 'Veternary',
                                  imageUrl: AppImages.dogSvg,
                                ),
                                ServicesCard(
                                  color: AppColors.food,
                                  text: 'Food',
                                  imageUrl: AppImages.dogFoodSvg,
                                ),
                                ServicesCard(
                                  color: AppColors.medical,
                                  text: 'Medicine',
                                  imageUrl: AppImages.stethoscopeDoctorSvg,
                                ),
                                ServicesCard(
                                  color: AppColors.grooming,
                                  text: 'Grooming',
                                  imageUrl: AppImages.dogGroomingSvg,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      // color: Colors.amber,
                      padding: EdgeInsets.only(top: 8),
                      height: screenHeight * 0.39,
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: 12,
                        scrollDirection: Axis.horizontal,
                        // TODO:Add rating from actual data
                        itemBuilder: (context, index) {
                          double screenWidht = MediaQuery.of(
                            context,
                          ).size.width;
                          double center =
                              scrollController.offset +
                              (scrollController.position.viewportDimension / 2);
                          double itemCenter = index * 200 + (100);
                          double distance = (itemCenter - center).abs();
                          double scale =
                              1 -
                              distance /
                                  scrollController.position.viewportDimension;

                          // double rotate = distance * 0.002;
                          return Transform.scale(
                            scale: scale.clamp(0.75, 1),
                            child: ListCard(
                              rating: doctors[index].rating,
                              name: doctors[index].name,
                              category: doctors[index].category,
                              image: doctors[index].image,
                            ),
                          );
                        },
                        // separatorBuilder: (context, index) => SizedBox(width: 8),
                        // print(
                        //   'Center $center \n item Center $itemCenter \n Distance $distance \n Scale $scale',
                        // );
                      ),
                    ),
                  ),
                  // SliverFillRemaining(
                  //   hasScrollBody: false,
                  //   child: SizedBox(height: screenHeight * 0.1),
                  // ),
                ],
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          fixedColor: Colors.amber,
          selectedIconTheme: IconThemeData().copyWith(color: AppColors.orange),
          unselectedIconTheme: IconThemeData().copyWith(
            color: AppColors.extralightGrey,
          ),

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mobile_friendly_rounded),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_rounded),
              label: 'Setting',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
