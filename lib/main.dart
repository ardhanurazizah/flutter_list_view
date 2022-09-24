import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(2),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      Text('BERITA TERBARU'),
                      Text('PERTANDINGAN HARI INI'),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/images/foto.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    alignment: Alignment.center,
                    child: const Text(
                      'Costa Mendekat Ke Palmeiras',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    color: Color.fromARGB(255, 214, 114, 189),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Transfer',
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
            berita(),
            berita(),
            berita(),
            berita(),
            berita(),
            berita(),
            berita(),
          ],
        ));
  }
}

class berita extends StatelessWidget {
  const berita({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
      ),
      child: Column(children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Container(
                width: 198,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  image: const DecorationImage(
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/foto1.png'),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 210,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                ),
                child: const Text(
                    'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat'),
              ),
            ],
          ),
        ),
        Container(
          height: 30,
          alignment: Alignment.centerLeft,
          child: const Text('Barcelona Feb 13, 2021'),
        )
      ]),
    );
  }
}
