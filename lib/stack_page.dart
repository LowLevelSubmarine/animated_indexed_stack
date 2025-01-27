import 'package:flutter/material.dart';
import 'package:animated_indexed_stack/route_transitions.dart';

class StackPage extends StatefulWidget {

  final Widget child;
  final RouteTransitionsBuilder? transitionsBuilder;
  final Animation<double> animation;
  final Animation<double> animationSecondary;

  const StackPage({
    Key? key,
    required this.child,
    this.transitionsBuilder,
    required this.animation,
    required this.animationSecondary,
  }) : super(key: key);

  @override
  _StackPageState createState() => _StackPageState();

}

class _StackPageState extends State<StackPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final transitionsBuilder = widget.transitionsBuilder ?? defaultTransition;
    return transitionsBuilder(
      context,
      widget.animation,
      widget.animationSecondary,
      widget.child,
    );
  }

}

final defaultTransition = materialTabTransition;
