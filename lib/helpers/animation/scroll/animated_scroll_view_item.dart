import 'package:flutter/material.dart';

///An
class AnimatedScrollViewItem extends StatefulWidget {
  const AnimatedScrollViewItem(
      {Key? key, required this.child, this.curves = Curves.easeInOut})
      : super(key: key);

  final Widget child;
  final Curve curves;
  @override
  State<AnimatedScrollViewItem> createState() => _AnimatedScrollViewItemState();
}

class _AnimatedScrollViewItemState extends State<AnimatedScrollViewItem>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animationScale;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..forward();

    _animationScale = Tween<double>(begin: 0.5, end: 1).animate(CurvedAnimation(
      parent: _animationController,
      curve: widget.curves,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animationScale,
      child: widget.child,
    );
  }
}
