// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ImmediateHelp extends StatelessWidget {
  const ImmediateHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Immediate Help',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                elevation: 5,
                child: SizedBox.fromSize(
                    size: const Size.fromHeight(120),
                    child: const Center(
                        child: Text(
                      'ARE YOU SURE?\n\nYou are about to send SOS message to \nnearby aid centres ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ))),
              ),
              const SizedBox(height: 20),
              Center(
                child: IconButton.filled(
                  iconSize: 200,
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text("'SOS' was pressed"),
                        duration: const Duration(milliseconds: 750),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Symbols.sos),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
