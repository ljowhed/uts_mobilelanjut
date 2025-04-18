import 'package:flutter/material.dart';

class ZodiacCard extends StatelessWidget {
  final String sign;
  final String description;

  const ZodiacCard({
    super.key,
    required this.sign,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(sign, style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
            const SizedBox(height: 10),
            Text(description),
          ],
        ),
      ),
    );
  }
}