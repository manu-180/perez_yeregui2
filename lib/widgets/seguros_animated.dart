import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExpandableBox extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Widget content;

  const ExpandableBox({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        width: size.width * 0.15,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFFFFF0EE),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha(60),
              spreadRadius: 2,
              blurRadius: 3,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FaIcon(
              icon,
              size: size.width > 1000 ? size.width * 0.03 : size.width * 0.07,
              color: const Color(0xFF5C5664),
            ),
            SizedBox(height: size.width * 0.01),
            Text(
              title,
              style: TextStyle(
                fontSize:
                    size.width > 1000 ? size.width * 0.012 : size.width * 0.02,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF5C5664),
              ),
            ),
            SizedBox(height: size.width * 0.005),
            Text(
              subtitle,
              style: TextStyle(
                fontSize:
                    size.width > 1000 ? size.width * 0.011 : size.width * 0.019,
                color: const Color(0xFF5C5664),
              ),
            ),
            const SizedBox(height: 10),
            content
          ],
        ),
      ),
    );
  }
}
