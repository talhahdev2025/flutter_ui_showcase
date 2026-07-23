import 'package:dog_app/core/exports.dart';
import 'package:dog_app/data/dummy_dogs_food.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  bool isFavorite = false;
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    double appBarHeight = screenHeight * 0.1;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //aapBar
          SliverAppBar(
            actions: [Icon(Icons.notifications_outlined)],
            actionsPadding: AppInsets.allMd,
            toolbarHeight: appBarHeight,
            title: Text(
              'Bruno The Dog',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            flexibleSpace: FlexibleSpaceBar(collapseMode: CollapseMode.pin),
          ),
          //search text Field
          SliverToBoxAdapter(
            child: const CustomTextField(
              prefixIcon: Icons.search_rounded,
              sufixIcon: null,
              onSubmitted: null,
              hint: 'Search for food',
            ),
          ),
          //card
          SliverPadding(
            padding: AppInsets.allMd,
            sliver: SliverToBoxAdapter(
              child: HomeCard(
                btnText: 'Shop Now',
                image: AppImages.homeCardDog,
                labelText: '20% Off',
                text: 'Fresh Bites Organic Shop',
              ),
            ),
          ),
          //recommended  section header
          SliverToBoxAdapter(
            child: const SectionHeader(title: 'Recommended for Bruno'),
          ),

          //GridView
          SliverPadding(
            padding: AppInsets.allMd,
            sliver: SliverGrid.builder(
              itemCount: dogFoods.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: screenWidth * 0.5,
                mainAxisExtent: screenHeight * 0.3,
                crossAxisSpacing: screenWidth * 0.05,
                mainAxisSpacing: screenHeight * 0.025,
              ),
              itemBuilder: (context, index) {
                final dogFood = dogFoods[index];
                return LayoutBuilder(
                  builder: (context, constraints) => Container(
                    height: constraints.maxHeight * 0.5,
                    width: constraints.maxWidth,
                    padding: AppInsets.allMd,
                    decoration: BoxDecoration(
                      borderRadius: AppRadius.large,
                      boxShadow: AppShadows.card,
                      color: AppColors.background,
                    ),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        //stack
                        SizedBox(
                          width: constraints.maxWidth * 0.9,
                          height: constraints.maxHeight * 0.5,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: AppRadius.large,
                                  image: DecorationImage(
                                    fit: .cover,
                                    image: NetworkImage(dogFood.image),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: AppSpacing.xxxs,
                                top: AppSpacing.xxxs,
                                child: OnTapAnimated(
                                  onTap: () => setState(() {
                                    dogFood.isFavorite = !dogFood.isFavorite;
                                  }),
                                  child: Container(
                                    padding: AppInsets.allXXs,
                                    decoration: BoxDecoration(
                                      borderRadius: AppRadius.large,
                                      color: AppColors.background,
                                    ),
                                    child: (dogFood.isFavorite)
                                        ? Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          )
                                        : Icon(Icons.favorite_border_rounded),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // food name
                        Spacer(),
                        Text(
                          dogFood.name,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        Text(dogFood.subtitle),
                        Spacer(),
                        Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Text(
                              '\$${dogFood.price}',
                              style: Theme.of(context).textTheme.headlineMedium
                                  ?.copyWith(
                                    fontStyle: .normal,
                                    color: AppColors.onPrimary,
                                  ),
                            ),
                            OnTapAnimated(
                              child: CustomIcon(
                                iconData: Icons.add_rounded,
                                backgroundColor: AppColors.primary,
                                iconColor: AppColors.background,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: SizedBox(height: screenHeight * 0.1),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_cart_outlined),
      ),
    );
  }
}

class FavoriteIconAnimated extends StatefulWidget {
  const FavoriteIconAnimated({super.key});

  @override
  State<FavoriteIconAnimated> createState() => _FavoriteIconAnimatedState();
}

class _FavoriteIconAnimatedState extends State<FavoriteIconAnimated> {
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.favorite_border_rounded);
  }
}
