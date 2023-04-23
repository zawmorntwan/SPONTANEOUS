import 'package:flutter/material.dart';

import '../constants.dart';
import '../data/notifiers/notifiers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: kDouble20),
            const Text(
              'SPONTANEOUS',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 40,
                letterSpacing: 4.0,
              ),
            ),
            const SizedBox(height: kDouble20),
            Icon(
              Icons.wifi,
              size: 200,
              color: Colors.teal,
            ),
            ValueListenableBuilder(
              valueListenable: dataNotifier,
              builder: (ctx, data, _) {
                return Padding(
                  padding: const EdgeInsets.all(kDouble10),
                  child: Column(
                    children: [
                      const SizedBox(height: kDouble20),
                      Text(
                        data.activity,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: kDouble10),
                      Text(
                        'This is a ${data.type} type of activity.',
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black45,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      ListTile(
                        title: Text(data.participants.toString()),
                        leading: const Text('Participants :'),
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton.icon(
            onPressed: () async {
              await dataNotifier.value.reset();
            },
            icon: const Icon(Icons.add),
            label: const Text('New activity'),
          ),
          const SizedBox(height: kDouble10),
          TextButton(
            onPressed: () {
              dataNotifier.value.logData();
            },
            child: const Text('Log data'),
          ),
          const SizedBox(height: kDouble20),
        ],
      ),
    );
  }
}
