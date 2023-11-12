import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Tambahkan baris ini
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Stack(
            children: [
              Positioned(
                left: 10,
                top: 5,
                child: IconButton(
                  onPressed: () {
                    // Kode untuk menampilkan ikon profil
                  },
                  icon: const Icon(Icons.account_circle), // Ganti ikon profil yang sesuai
                ),
              ),
            ],
          ),
          flexibleSpace: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 15, top: 25),
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
            child: TextField(
              style: const TextStyle(fontSize: 21, color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Cari Twitter',
                filled: true,
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              // Kode untuk menangani aksi saat ikon pengaturan ditekan
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        body: Stack(
          children: [
            const Positioned(
              top: 20,
              left: 10,
              child: Text(
                "Trends for you",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              //isi 1
              top: 80,
              left: 10,
              height: 200,
              width: 1000,
              child: Stack(
                children: <Widget>[
                  const Positioned(
                    child: Text(
                      "Trending in Indonesia",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 30,
                    child: Text(
                      "Hujan",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 60,
                    child: Text(
                      "46.7K posts",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      left: 360,
                      child: IconButton(
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ))
                ],
              ),
            ),
            Positioned(
              //isi 2
              top: 200,
              left: 10,
              height: 200,
              width: 1000,
              child: Stack(
                children: <Widget>[
                  const Positioned(
                    child: Text(
                      "Trending in Indonesia",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 30,
                    child: Text(
                      "#SalmaSalsabil",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 60,
                    child: Text(
                      "29.6K posts",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      left: 360,
                      child: IconButton(
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ))
                ],
              ),
            ),
            Positioned(
              //isi 3
              top: 320,
              left: 10,
              height: 200,
              width: 1000,
              child: Stack(
                children: <Widget>[
                  const Positioned(
                    child: Text(
                      "Trending in Indonesia",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 30,
                    child: Text(
                      "Monas",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 60,
                    child: Text(
                      "10.8K posts",
                      style: TextStyle(
                        fontSize: 20, 
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      left: 360,
                      child: IconButton(
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ))
                ],
              ),
            ),
            Positioned(
              //isi 4
              top: 440,
              left: 10,
              height: 200,
              width: 1000,
              child: Stack(
                children: <Widget>[
                  const Positioned(
                    child: Text(
                      "Trending in Indonesia",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 30,
                    child: Text(
                      "#GGMU",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 60,
                    child: Text(
                      "2,200 posts",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      left: 360,
                      child: IconButton(
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ))
                ],
              ),
            ),
            Positioned(
              //showmore
              top: 540,
              left: 0,
              child: Container(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Show more",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}