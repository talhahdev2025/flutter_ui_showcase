import 'package:dog_app/core/exports.dart';

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
              borderRadius: AppRadius.extraLarge,
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
                    image: AssetImage(AppImages.homeCardDog),
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
