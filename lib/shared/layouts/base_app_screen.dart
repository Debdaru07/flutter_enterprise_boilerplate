import 'package:flutter/material.dart';

class BaseAppScreen extends StatelessWidget {
  final Widget body;

  const BaseAppScreen({required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: body);
  }
}
