import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class Home {
  static body(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 40.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Image(
                image: AssetImage(
                    'assets/texts/depression causes 80% heart faliures. every 1 in 5 person suffers from depression and anxiety.png')),
          ),
          const SizedBox(height: 8.0),
          Container(
            // color: Colors.blue.shade50,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 40),
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)),
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    splashColor: Colors.amber[100],
                    onTap: () {
                      Navigator.of(context).pushNamed('psychiatrist-route');
                    },
                    child: const ListTile(
                      title: Text(
                        'Psychiatric Help',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Tell us problem in detail'),
                      leading: Icon(Symbols.neurology, weight: 800),
                      trailing: Icon(Symbols.chevron_right, weight: 800),
                    ),
                  ),
                ),
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)),
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    splashColor: Colors.deepPurple[100],
                    onTap: () {
                      Navigator.of(context).pushNamed('anonymous-route');
                    },
                    child: const ListTile(
                      title: Text(
                        'Anonymous Help',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Type or send Voice note'),
                      leading: Icon(Symbols.visibility_off, weight: 800),
                      trailing: Icon(Symbols.chevron_right, weight: 800),
                    ),
                  ),
                ),
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)),
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    splashColor: Colors.cyan[100],
                    onTap: () {
                      Navigator.of(context).pushNamed('teamPage-route');
                    },
                    child: const ListTile(
                      title: Text(
                        'About Instant Saviours',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Credit where it dues'),
                      leading: Icon(Symbols.crowdsource, weight: 800),
                      trailing: Icon(Symbols.chevron_right, weight: 800),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
