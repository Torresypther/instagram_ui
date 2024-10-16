import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

List studentNames = [
  "TILE NUMBA 1",
  "TILE NUMBA 2",
  "TILE NUMBA 3",
  "TILE NUMBA 4",
  "TILE NUMBA 5",
  "TILE NUMBA 6",
  "TILE NUMBA 7",
  "TILE NUMBA 8",
  "TILE NUMBA 9",
  "TILE NUMBA 10",
];

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // Horizontal Scrollable ListView at the top with circular tiles
            const SizedBox(
              height: 100, // Set height for the horizontal list
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CircularTile(name: "D1"),
                    CircularTile(name: "D2"),
                    CircularTile(name: "D3"),
                    CircularTile(name: "D4"),
                    CircularTile(name: "D5"),
                    CircularTile(name: "D6"),
                    CircularTile(name: "D5"),
                    CircularTile(name: "D6"),
                  ],
                ),
              ),
            ),
            // Vertically Scrollable ListView below
            Expanded(
              child: ListView.builder(
                itemCount: studentNames.length,
                itemBuilder: (context, index) {
                  return ListViewTile(name: studentNames[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CircularTile extends StatelessWidget {
  const CircularTile({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.red.shade200,
          shape: BoxShape.circle, // Make the container circular
        ),
        alignment: Alignment.center,
        child: Text(name),
      ),
    );
  }
}

class ListViewTile extends StatelessWidget {
  const ListViewTile({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 250,
        padding: const EdgeInsets.all(16.0),
        color: Colors.yellowAccent.shade100,
        child: Text(name),
      ),
    );
  }
}
