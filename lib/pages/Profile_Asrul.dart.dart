import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: myapp(),
    debugShowCheckedModeBanner: false,
  ));
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              child: Container(
                width: 600,
                height: 132,
                color: Colors.blue,
              ),
            ),
            Positioned(
              //profile pic
              left: 0,
              top: 75,
              width: 110,
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    top: 13,
                    width: 95,
                    height: 90,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Positioned(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.account_circle),
                        iconSize: 100,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
                left: 250,
                top: 140,
                width: 150,
                child: Container(
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: BorderSide(color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text(
                      "Edit Profile",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  // decoration: BoxDecoration(

                  // ),
                )),
            const Positioned(
              top: 20,
              child: Icon(
                Icons.arrow_circle_left_outlined,
                size: 40,
                color: Colors.white,
              ),
            ),
            const Positioned(
              top: 26,
              left: 306,
              child: Icon(
                Icons.search_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
            const Positioned(
              top: 26,
              left: 355,
              child: Icon(
                Icons.more_vert,
                size: 30,
                color: Colors.white,
              ),
            ),
            const Positioned(
              top: 20,
              left: 300,
              child: Icon(
                Icons.circle_outlined,
                size: 40,
                color: Colors.white,
              ),
            ),
            const Positioned(
              top: 20,
              left: 350,
              child: Icon(
                Icons.circle_outlined,
                size: 40,
                color: Colors.white,
              ),
            ),
            const Positioned(
              top: 245,
              left: 10,
              child: Icon(
                Icons.egg_outlined,
                size: 20,
                color: Color.fromARGB(252, 121, 106, 106),
              ),
            ),
            const Positioned(
              top: 275,
              left: 10,
              child: Icon(
                Icons.calendar_month_outlined,
                size: 20,
                color: Color.fromARGB(252, 121, 106, 106),
              ),
            ),
            const Positioned(
              top: 184,
              left: 10,
              child: Text(
                'AsYupi',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Positioned(
              top: 218,
              left: 10,
              child: Text(
                '@yupi',
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(252, 121, 106, 106)),
              ),
            ),
            const Positioned(
              top: 400,
              left: 20,
              child: Text(
                'Tidak Ada Postingan',
                style: TextStyle(
                    fontSize: 19, color: Color.fromARGB(252, 121, 106, 106)),
              ),
            ),
            const Positioned(
              top: 247,
              left: 40,
              child: Text(
                'Lahir 11 Agustus 2003',
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(252, 121, 106, 106)),
              ),
            ),
            const Positioned(
              top: 277,
              left: 40,
              child: Text(
                'Bergabung Desember 2021',
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(252, 121, 106, 106)),
              ),
            ),
            const Positioned(
              top: 310,
              left: 45,
              child: Text(
                'Mengikuti',
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(252, 121, 106, 106)),
              ),
            ),
            const Positioned(
              top: 310,
              left: 150,
              child: Text(
                'Pengikut',
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(252, 121, 106, 106)),
              ),
            ),
            const Positioned(
              top: 308,
              left: 13,
              child: Text(
                '100',
                style: TextStyle(
                    fontSize: 17, color: Color.fromARGB(250, 255, 255, 255)),
              ),
            ),
            const Positioned(
              top: 305,
              left: 126,
              child: Text(
                '97',
                style: TextStyle(
                    fontSize: 19, color: Color.fromARGB(250, 255, 255, 255)),
              ),
            ),
            Positioned(
              top: 330,
              left: 8,
              child: Row(
                children: <Widget>[
                  TextButton(
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(50, 0)),
                    ),
                    onPressed: () => {},
                    child: const Text(
                      "Postingan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(50, 0)),
                    ),
                    onPressed: () => {},
                    child: const Text(
                      "Balasan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(50, 0)),
                    ),
                    onPressed: () => {},
                    child: const Text(
                      "Sorotan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(50, 0)),
                    ),
                    onPressed: () => {},
                    child: const Text(
                      "Media",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(50, 0)),
                    ),
                    onPressed: () => {},
                    child: const Text(
                      "Suka",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}