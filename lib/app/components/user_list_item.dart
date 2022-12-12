import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserListItem extends StatelessWidget {
  const UserListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 16,
      shadowColor: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            const CircleAvatar(radius: 24),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jane Doe",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "24 september 2022",
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                ],
              ),
            ),
            Expanded(
              child: AutoSizeText(
                '+20 €',
                maxLines: 1,
                textAlign: TextAlign.end,
                style: TextStyle(color: Colors.red, fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 12),
            const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 14)
          ],
        ),
      ),
    );
  }
}
