import 'package:dog_app/core/exports.dart';

class OnTapUpDownAnimated extends StatefulWidget {
  const OnTapUpDownAnimated({super.key, required this.child});
  final Widget child;
  @override
  State<OnTapUpDownAnimated> createState() => _OnTapUpDownAnimatedState();
}

class _OnTapUpDownAnimatedState extends State<OnTapUpDownAnimated> {
  double _scale = 1;
  void _scaleDown(_) {
    setState(() {
      _scale = 0.9;
    });
  }

  void _scaleUp(_) {
    setState(() {
      _scale = 1;
    });
  }

  void _scaleCancel() {
    setState(() {
      _scale = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _scaleDown,
      onTapUp: _scaleUp,
      onTapCancel: _scaleCancel,

      child: AnimatedScale(
        scale: _scale,
        duration: AppAnimations.fast,
        child: widget.child,
      ),
    );
  }
}
