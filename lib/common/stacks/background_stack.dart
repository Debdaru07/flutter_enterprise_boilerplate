import 'package:flutter/material.dart';

class BackgroundStack extends StatelessWidget {
  final Widget child;

  const BackgroundStack({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [Container(color: Colors.grey[200]), child]);
  }
}
