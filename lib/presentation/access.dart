import "package:flutter/material.dart";

class Access extends StatelessWidget {
  const Access({required this.isPrivate, super.key});

  final bool isPrivate;

  @override
  Widget build(BuildContext context) {
    return Icon(
      isPrivate ? Icons.lock : Icons.lock_open,
      color: Colors.grey.shade700,
    );
  }
}
