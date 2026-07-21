import 'package:dog_app/core/exports.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key, 
    required this.btnText,
    required this.image,
    required this.labelText,
    required this.text,
  });
  final String text;
  final String btnText;
  final String labelText;
  final String image;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double cardHeight = MediaQuery.of(context).size.height * 0.25;
        double cardWidth = MediaQuery.of(context).size.width;
        return Container(
          width: double.infinity,
          height: cardHeight,
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
                    flex: 3,
                    fit: .tight,
                    child: Padding(
                      padding: AppInsets.allMd,
                      child: Column(
                        mainAxisAlignment: .spaceAround,
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            text,
                            style: TextStyle(
                              height: 1,
                              fontWeight: .w500,
                              color: AppColors.white,
                              fontSize: (cardWidth < 400) ? 26 : 30,
                            ),
                          ),
                          Flex(
                            direction: (cardWidth < 400)
                                ? Axis.vertical
                                : Axis.horizontal,
                            crossAxisAlignment: (cardWidth < 400)
                                ? CrossAxisAlignment.start
                                : CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 4),
                                padding: EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 16,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: AppRadius.large,
                                ),
                                child: Text(
                                  btnText,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Text(
                                labelText,
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
                    flex: 2,
                    child: Align(
                      alignment: .center,
                      child: Container(
                        clipBehavior: .hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: AppRadius.extraLarge,
                          image: DecorationImage(
                            image: AssetImage(image),
                            fit: .cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
