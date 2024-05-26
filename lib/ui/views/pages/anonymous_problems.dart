import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class AnonymousProblems extends StatelessWidget {
  const AnonymousProblems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Anonymous Help',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Card(
              elevation: 5,
              child: SizedBox.fromSize(
                  size: const Size.fromHeight(80),
                  child: const Center(
                      child: Text(
                    'We will reach you back within the app\nCreate a new ticket',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ))),
            ),
            const SizedBox(height: 8),
            const TextField(
              decoration: InputDecoration(
                hintText: "Start typing your Problem",
                border: OutlineInputBorder(),
                labelText: 'Problem',
                alignLabelWithHint: true,
              ),
              // autofocus: true,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              minLines: 6,
            ),
            IconButton.filledTonal(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text("'Send' was pressed"),
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
                children: [
                  Text(
                    'Send',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(Symbols.send),
                ],
              ),
            ),
            const Divider(
              height: 40,
              indent: 15,
              endIndent: 15,
              thickness: 3,
            ),
            const Text(
              'OR\nSend us a VoiceNote',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8.0),
            IconButton.filledTonal(
              iconSize: 72,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text("'Mic' was pressed"),
                    duration: const Duration(milliseconds: 750),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                );
              },
              icon: const Icon(Symbols.mic),
            )
          ]),
        ),
      ),
    );
  }
}
