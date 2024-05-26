import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class Notifications {
  static appbar(BuildContext context) {
    return AppBar(
      title: const Text('Title'),
    );
  }

  static body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Card(
            child: ListTile(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text("'Notification' was pressed"),
                    behavior: SnackBarBehavior.floating,
                    duration: const Duration(milliseconds: 750),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                );
              },
              leading: const Icon(Symbols.mark_unread_chat_alt),
              trailing: const Icon(Symbols.delete),
              title: const Text(
                'Latest reply on your Ticket#1234',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text('10:20 AM'),
            ),
          )
        ]),
      ),
    );
  }
}
