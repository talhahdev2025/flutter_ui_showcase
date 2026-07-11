import 'package:dog_app/core/constants/app_colors.dart';
import 'package:dog_app/core/constants/app_insects.dart';
import 'package:dog_app/core/constants/app_radius.dart';
import 'package:dog_app/widgets/custom_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dog_app/core/constants/app_sizes.dart';

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
            scrollBehavior: MaterialScrollBehavior(),
            slivers: [
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
              SliverPadding(
                padding: AppInsets.allMd,
                sliver: SliverToBoxAdapter(child: HomeCard()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      // margin: AppInsets.allSm,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.orange,
              borderRadius: AppRadius.medium,
            ),
          ),
          Row(
            children: [
              Flexible(
                fit: .tight,
                child: Padding(
                  padding: AppInsets.allMd,
                  child: Column(
                    mainAxisAlignment: .spaceBetween,
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        'New Work Shop for Dogs',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: Theme.of(
                            context,
                          ).textTheme.headlineMedium?.fontSize,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: .start,
                        children: [
                          FilledButton(
                            onPressed: () {},
                            style: FilledButton.styleFrom(
                              backgroundColor: AppColors.white,
                            ),
                            child: Text(
                              'Join',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Text(
                            ' +2.8k Members',
                            style: TextStyle(color: AppColors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                fit: .tight,
                child: Align(
                  alignment: .center,
                  child: Image(
                    image: AssetImage('assets/images/home_card_dog.png'),
                    fit: .cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
