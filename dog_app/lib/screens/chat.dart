import 'package:dog_app/core/exports.dart';

class Chat extends StatefulWidget {
  const Chat({super.key, required this.args});
  final ChatArguments args;

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = MediaQuery.of(context).size.width;
        final screenHeight = MediaQuery.of(context).size.height;
        final appBarHeight = screenHeight * 0.1;
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              //App Bar
              SliverAppBar(
                actions: [
                  CustomIcon(
                    iconData: Icons.call_outlined,
                    iconColor: AppColors.onPrimary,
                  ),
                  SizedBox(width: AppSpacing.md),
                  CustomIcon(
                    iconData: Icons.videocam_outlined,
                    iconColor: AppColors.onPrimary,
                  ),
                ],
                actionsPadding: AppInsets.allMd,
                toolbarHeight: appBarHeight,
                title: Row(
                  spacing: AppSpacing.sm,
                  children: [
                    Container(
                      padding: AppInsets.allXXXs,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary,
                      ),
                      child: CircleAvatar(
                        foregroundImage: NetworkImage(widget.args.image),
                      ),
                    ),
                    Column(
                      mainAxisSize: .min,
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          widget.args.name,
                          overflow: .ellipsis,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text(
                          'Online',
                          style: Theme.of(context).textTheme.labelMedium
                              ?.copyWith(color: Colors.green),
                        ),
                      ],
                    ),
                  ],
                ),
                flexibleSpace: FlexibleSpaceBar(collapseMode: CollapseMode.pin),
              ),
              //chat Bubble
              SliverToBoxAdapter(
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.9,
                  child: Stack(
                    children: [
                      ListView.builder(
                        itemCount: doctors[widget.args.id].chatList.length,
                        itemBuilder: (context, index) {
                          final Doctor doctor = doctors[widget.args.id];
                          return AnimatedScale(
                            duration: Duration(seconds: 5),
                            scale: 1,
                            child: ChatBubble(
                              text: doctor.chatList[index]['text'],
                              alignment: (doctor.chatList[index]['isMe'])
                                  ? AlignmentGeometry.centerEnd
                                  : AlignmentGeometry.centerStart,
                            ),
                          );
                        },
                      ),
                      Positioned(
                        bottom: 0,
                        child: SizedBox(
                          width: screenWidth,
                          child: Row(
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  sufixIcon: Icons.keyboard_voice_outlined,
                                  prefixIcon: Icons.add_circle_outline_rounded,
                                  onSubmitted: (value) {
                                    setState(() {
                                      doctors[widget.args.id].chatList.add({
                                        'text': value,
                                        'isMe': true,
                                      });
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
