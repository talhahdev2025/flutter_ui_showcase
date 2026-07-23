import 'package:dog_app/core/exports.dart';

class Chat extends StatefulWidget {
  const Chat({super.key, required this.args});
  final ChatArguments args;

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
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
                  OnTapAnimated(
                    child: CustomIcon(
                      iconData: Icons.call_outlined,
                      iconColor: AppColors.onPrimary,
                    ),
                  ),
                  SizedBox(width: AppSpacing.md),
                  OnTapAnimated(
                    child: CustomIcon(
                      iconData: Icons.videocam_outlined,
                      iconColor: AppColors.onPrimary,
                    ),
                  ),
                ],
                actionsPadding: AppInsets.allMd,
                toolbarHeight: appBarHeight,
                title: Row(
                  spacing: AppSpacing.sm,
                  children: [
                    OnTapAnimated(
                      child: Container(
                        padding: AppInsets.allXXXs,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primary,
                        ),
                        child: CircleAvatar(
                          foregroundImage: NetworkImage(widget.args.image),
                        ),
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
                      AnimatedList(
                        key: _listKey,
                        initialItemCount:
                            doctors[widget.args.id].chatList.length,

                        itemBuilder: (context, index, animation) {
                          final Doctor doctor = doctors[widget.args.id];
                          return SlideTransition(
                            position: Tween(
                              begin: Offset(0.2, 0),
                              end: Offset.zero,
                            ).animate(animation),

                            child: FadeTransition(
                              opacity: animation,
                              child: ChatBubble(
                                text: doctor.chatList[index]['text'],
                                alignment: (doctor.chatList[index]['isMe'])
                                    ? AlignmentGeometry.centerEnd
                                    : AlignmentGeometry.centerStart,
                              ),
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
                                    _listKey.currentState?.insertItem(
                                      doctors[widget.args.id].chatList.length -
                                          1,
                                      duration: const Duration(seconds: 5),
                                    );
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
