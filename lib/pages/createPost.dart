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
  bool _togglebutton = false;

  void _toggle() {
    setState(() {
      if (_togglebutton) {
        _togglebutton = false;
      } else {
        _togglebutton = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
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
                  child: const FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Tweet",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, //buat semua start di kiri
          children: [
            Row(
              children: [
                Container(
                  height: 550,
                  width: 400,
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Stack(
                    children: [
                      const Positioned(
                        child: TextField(
                          textAlignVertical: TextAlignVertical.top,
                          expands: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 50, top: 10),
                            hintText: "What's happening?",
                            hintStyle: TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.black,
                            border: InputBorder
                                .none, //utk buat border line default hilang
                          ),
                          maxLines: null,
                          minLines: null,
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50)),
                          child: const Icon(
                            Icons.person_2_rounded,
                            color: Color.fromARGB(123, 0, 0, 0),
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                child: Row(
                  children: [
                    Icon(
                      _togglebutton ? Icons.circle_outlined : Icons.circle,
                      color: Colors.white,
                    ),
                    const Text(
                      " Everyone Can Reply",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                onTap: () {
                  _toggle();
                  print("object");
                },
              ),
            ),
            Row(
              //bagian bawah
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_photo_alternate,
                      color: Colors.blue,
                      size: 45,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.gif_box_outlined,
                      color: Colors.blue,
                      size: 45,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.list_alt,
                      color: Colors.blue,
                      size: 45,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.room_outlined,
                      color: Colors.blue,
                      size: 45,
                    )),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle_outline,
                          color: Colors.blue,
                          size: 45,
                        )),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
