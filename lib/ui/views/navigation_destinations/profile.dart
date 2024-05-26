import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                CircleAvatar(
                  radius: 72,
                  child: IconButton(
                    tooltip: 'Profile',
                    onPressed: () {},
                    icon: const Icon(
                      Symbols.person,
                      size: 120,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Name',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 10),
                IconButton.outlined(
                  constraints:
                      const BoxConstraints(minHeight: 20, minWidth: 250),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text("'Edit Profile' was pressed"),
                        duration: const Duration(milliseconds: 750),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    );
                  },
                  icon: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Edit Profile'),
                      SizedBox(width: 10),
                      Icon(Symbols.edit),
                    ],
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                // elevation: 0,
                child: Column(children: [
                  ListTile(
                    title: Text(
                      'Number',
                      style: TextStyle(color: Colors.blue, fontSize: 24),
                    ),
                    subtitle: Text('1234XXXXXX'),
                    leading: Icon(Symbols.call),
                  ),
                  ListTile(
                    title: Text(
                      'Email',
                      style: TextStyle(color: Colors.blue, fontSize: 24),
                    ),
                    subtitle: Text('InstantSaviours@mail.com'),
                    leading: Icon(Symbols.mail),
                  ),
                  ListTile(
                    title: Text(
                      'Gender',
                      style: TextStyle(color: Colors.blue, fontSize: 24),
                    ),
                    subtitle: Text('Unknown'),
                    leading: Icon(Symbols.person),
                  ),
                  ListTile(
                    title: Text(
                      'Region',
                      style: TextStyle(color: Colors.blue, fontSize: 24),
                    ),
                    subtitle: Text('New Delhi'),
                    leading: Icon(Symbols.public),
                  ),
                  ListTile(
                    title: Text(
                      'Blood Group',
                      style: TextStyle(color: Colors.blue, fontSize: 24),
                    ),
                    subtitle: Text('Unknown'),
                    leading: Icon(Symbols.bloodtype),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
