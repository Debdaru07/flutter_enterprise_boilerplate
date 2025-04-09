import 'package:flutter/material.dart';

class AppDropdown<T> extends StatelessWidget {
  final List<T> items;
  final T? value;
  final void Function(T?) onChanged;

  const AppDropdown({
    required this.items,
    this.value,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
      value: value,
      items:
          items
              .map((e) => DropdownMenuItem(value: e, child: Text(e.toString())))
              .toList(),
      onChanged: onChanged,
    );
  }
}
