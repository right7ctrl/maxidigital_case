import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:maxidigital_case/model/user_item_model.dart';

class UserListItem extends StatelessWidget {
  final UserItemModel user;
  final bool? isLastItem;

  const UserListItem({super.key, required this.user, this.isLastItem = false});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 16,
      shadowColor: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            _avatar(),
            const SizedBox(width: 12),
            _nameAndDateSection(),
            if (!isLastItem!) _earningTotalSection(),
            if (!isLastItem!) ...[const SizedBox(width: 12), const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 14)]
          ],
        ),
      ),
    );
  }

  CircleAvatar _avatar() {
    Widget? child;
    if (isLastItem!) child = const Icon(Icons.add);

    return CircleAvatar(radius: 24, child: child);
  }

  Expanded _earningTotalSection() {
    return Expanded(
      child: AutoSizeText(
        user.earningTotal,
        maxLines: 1,
        textAlign: TextAlign.end,
        style: const TextStyle(color: Colors.red, fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }

  Expanded _nameAndDateSection() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isLastItem! ? 'Invite' : user.fullName,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(color: isLastItem! ? Colors.red : Colors.black, fontWeight: FontWeight.bold),
          ),
          if (!isLastItem!) ...[
            const SizedBox(height: 4),
            Text(
              user.dateString,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.black54, fontSize: 10),
            ),
          ]
        ],
      ),
    );
  }
}
