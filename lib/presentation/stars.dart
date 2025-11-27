import "package:flutter/material.dart";

class Stars extends StatelessWidget {
  const Stars({required this.starCount, super.key});

  final int starCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Text(
          starCount.toString(),
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
