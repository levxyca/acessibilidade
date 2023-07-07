import 'package:flutter/material.dart';

class Accessibility extends StatelessWidget {
  const Accessibility({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Accessibility on mobile devices',
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const MergeSemantics(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'How it works?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Card(
                    color: Colors.blue,
                    margin: EdgeInsets.zero,
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industries standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            MergeSemantics(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Image gallery',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Image.asset(
                    'assets/images/cat.jpg',
                    semanticLabel:
                        'A white cat with gray spots that come out around the eyes and up the head that is turned slightly to the left with a white butterfly with thin orange lines and black outline with small orange spots above its nose.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Semantics(
              label: 'Go to back',
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Go to back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
