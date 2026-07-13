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
                child: Container(
                  height: 250,
                  child: ListView.separated(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ListCard(),
                    separatorBuilder: (context, index) => SizedBox(width: 8),
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
