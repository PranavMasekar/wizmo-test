import 'package:flutter/material.dart';
import 'package:wizmo_test/widgets/export_widget.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Library',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              ListView(
                shrinkWrap: true,
                children: const [
                  LibraryCard(),
                  LibraryCard(),
                  LibraryCard(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
