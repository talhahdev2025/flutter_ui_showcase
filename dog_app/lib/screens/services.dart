import 'package:dog_app/core/exports.dart';
import 'package:dog_app/widgets/custom_text_field.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          double appBarHeight = MediaQuery.of(context).size.height * 0.1;
          return Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: AppSpacing.md),
            child: Scaffold(
              body: CustomScrollView(
                slivers: [
                  //AppBar
                  SliverAppBar(
                    actions: [Icon(Icons.notifications_outlined)],
                    actionsPadding: AppInsets.allMd,
                    toolbarHeight: appBarHeight,
                    title: Text(
                      'Bruno The Dog',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    flexibleSpace: FlexibleSpaceBar(
                      collapseMode: CollapseMode.pin,
                    ),
                  ),
                  //serach box
                  SliverToBoxAdapter(child: CustomTextField()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
