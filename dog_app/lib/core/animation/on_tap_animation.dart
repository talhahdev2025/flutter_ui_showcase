

import 'package:dog_app/core/exports.dart';

class OnTapAnimated extends StatefulWidget {
  const OnTapAnimated({super.key, required this.child, this.onTap});
  final Widget child;
  final VoidCallback? onTap;
  @override
  State<OnTapAnimated> createState() => _OnTapAnimatedState();
}

class _OnTapAnimatedState extends State<OnTapAnimated> {
  double _scale = 1;
  void _onTap() async {
    setState(() {
      _scale = 0.9;
    });
    await Future.delayed(AppAnimations.fast);
    setState(() {
      _scale = 1;
    });
    await Future.delayed(const Duration(milliseconds: 40));
    widget.onTap?.call();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,

      child: AnimatedScale(
        scale: _scale,
        duration: AppAnimations.fast,
        child: widget.child,
      ),
    );
  }
}
