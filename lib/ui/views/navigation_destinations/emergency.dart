// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class Emergency {
  static appbar(BuildContext context) {
    return AppBar(
      title: const Text('Title'),
    );
  }

  static body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(12)),
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: Colors.red[100],
              onTap: () {
                Navigator.of(context).pushNamed('immediate-route');
              },
              child: const ListTile(
                title: Text(
                  'Immediate Help',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle:
                    Text("We'll redirect you to nearest service available"),
                leading: Icon(Symbols.sos, weight: 800),
                trailing: Icon(Symbols.chevron_right, weight: 800),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
