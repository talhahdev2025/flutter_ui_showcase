import 'package:dog_app/core/exports.dart';

class onTapUpDownAnimated extends StatefulWidget {
  const onTapUpDownAnimated({super.key, required this.child});
  final Widget child;
  @override
  State<onTapUpDownAnimated> createState() => _onTapUpDownAnimatedState();
}

class _onTapUpDownAnimatedState extends State<onTapUpDownAnimated> {
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
