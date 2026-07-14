import 'dart:math';

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
      theme: ThemeData(colorScheme: .fromSeed(seedColor: AppColors.white)),
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
        body: Center(
          child: CustomScrollView(
            // scrollBehavior: MaterialScrollBehavior(),
            slivers: [
              //app bar
              SliverAppBar(
                actions: [CustomIcon(iconData: Icons.notifications_outlined)],
                actionsPadding: AppInsets.allMd,
                toolbarHeight: 72,
                expandedHeight: 80,
                title: Text(
                  widget.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                flexibleSpace: FlexibleSpaceBar(collapseMode: CollapseMode.pin),
              ),
              // home card
              SliverPadding(
                padding: AppInsets.allMd,
                sliver: SliverToBoxAdapter(child: HomeCard()),
              ),
              //Services
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [Text('Services'), Text('See All')],
                    ),
                    Row(
                      spacing: 8,
                      children: [
                        Expanded(
                          child: ServicesCard(
                            color: AppColors.lightBlue,
                            text: 'Veternary',
                            imageUrl: AppImages.dogSvg,
                          ),
                        ),
                        Expanded(
                          child: ServicesCard(
                            color: AppColors.lightPink,
                            text: 'Foods',
                            imageUrl: AppImages.dogFoodSvg,
                          ),
                        ),
                        Expanded(
                          child: ServicesCard(
                            color: AppColors.lightOrange,
                            text: 'Medicine',
                            imageUrl: AppImages.stethoscopeDoctorSvg,
                          ),
                        ),
                        Expanded(
                          child: ServicesCard(
                            color: AppColors.lightGrey,
                            text: 'Grooming',
                            imageUrl: AppImages.dogGroomingSvg,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 270,
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    // TODO:Add rating from actual data
                    itemBuilder: (context, index) {
                      double screenWidht = MediaQuery.of(context).size.width;
                      double center =
                          scrollController.offset +
                          (scrollController.position.viewportDimension / 2);
                      double itemCenter = index * 200 + (100);
                      double distance = (itemCenter - center).abs();
                      double scale =
                          1 -
                          distance /
                              scrollController.position.viewportDimension;

                      return Transform.scale(
                        scale: scale.clamp(0.75, 1),
                        child: ListCard(rating: 3),
                      );
                    },
                    // separatorBuilder: (context, index) => SizedBox(width: 8),
                    // print(
                    //   'Center $center \n item Center $itemCenter \n Distance $distance \n Scale $scale',
                    // );
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
