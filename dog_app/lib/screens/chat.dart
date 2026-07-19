import 'package:dog_app/core/exports.dart';

class Chat extends StatelessWidget {
  const Chat({super.key,required this.args});
  final ChatArguments args;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = MediaQuery.of(context).size.width;
        final screenHeight = MediaQuery.of(context).size.height;
        final appBarHeight = screenHeight * 0.1;
        return Scaffold(
          appBar: AppBar(
            actions: [
              Icon(Icons.call_outlined, color: AppColors.onPrimary),
              SizedBox(width: AppSpacing.md),
              Icon(Icons.videocam_outlined, color: AppColors.onPrimary),
            ],
            actionsPadding: AppInsets.allMd,
            toolbarHeight: appBarHeight,
            title: Column(
              mainAxisSize: .min,
              children: [
                Text(
                  'Bruno The Dog',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  'Online',
                  style: Theme.of(
                    context,
                  ).textTheme.headlineSmall?.copyWith(color: Colors.green),
                ),
              ],
            ),

            flexibleSpace: FlexibleSpaceBar(collapseMode: CollapseMode.pin),
          ),
        );
      },
    );
  }
}
