import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int x = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("Du hast genug getrunken!");
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Text(
              "Ich habe $x Biere getrunken!",
              style: const TextStyle(color: Colors.white, fontSize: 23),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  x++;
                });
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.orange)),
              child: const Text("Trink noch ein Bier!"),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
