import 'package:flutter/material.dart';

void main() {
  runApp(const TopBar());
}

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopbarState();
}

class _TopbarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {},
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(50),
                ),
                margin: const EdgeInsets.all(5),
                alignment: Alignment.center,
                width: 110,
                child: const Text(
                  "Tweet",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              child: TextField(
                style: const TextStyle(color: Colors.white, fontSize: 35),
                maxLines: null,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  hintText: "  What's happening?",
                  hintStyle: const TextStyle(color: Colors.white, fontSize: 35),
                  prefixIcon: Container(
                    width: 9,
                    height: 9,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white),
                    ),
                    padding: const EdgeInsets.all(0.0),
                    margin: const EdgeInsets.all(5),
                    child: const Icon(
                      Icons.person_2_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(), //pemisah
            Positioned(
              //global or private
              left: 10,
              bottom: 80,

              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: const Row(children: [
                  Icon(Icons.circle_outlined),
                  Text("  Everyone can reply",),
                ]),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: IconButton(
                  icon: const Icon(
                    Icons.add_photo_alternate,
                    color: Colors.blue,
                  ),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ),
            ),
            Positioned(
              left: 70,
              bottom: 0,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: IconButton(
                  icon: const Icon(
                    Icons.gif_box_outlined,
                    color: Colors.blue,
                  ),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ),
            ),
            Positioned(
              left: 140,
              bottom: 0,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: IconButton(
                  icon: const Icon(
                    Icons.list_alt,
                    color: Colors.blue,
                  ),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ),
            ),
            Positioned(
              left: 210,
              bottom: 0,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: IconButton(
                  icon: const Icon(
                    Icons.room_outlined,
                    color: Colors.blue,
                  ),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: IconButton(
                  icon: const Icon(
                    Icons.add_circle_outline,
                    color: Colors.blue,
                  ),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
