import 'package:flutter/material.dart';
import 'package:instant_saviours/ui/views/navigation_destinations/profile.dart';
import 'package:instant_saviours/ui/views/pages/Immediate_help.dart';
import 'package:instant_saviours/ui/views/pages/anonymous_problems.dart';
import 'package:instant_saviours/ui/views/pages/psychiatrict_help.dart';
import 'package:instant_saviours/ui/views/pages/team_page.dart';
import 'package:instant_saviours/ui/views/root_page_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instant Saviours',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      routes: {
        'profile-route': ((context) => const Profile()),
        'anonymous-route': ((context) => const AnonymousProblems()),
        'psychiatrist-route': ((context) => const PsychiatrictHelp()),
        'immediate-route': ((context) => const ImmediateHelp()),
        'teamPage-route': ((context) => const TeamPage()),
      },
      home: const RootPage(title: 'Instant Saviours'),
    );
  }
}
