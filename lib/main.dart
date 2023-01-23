import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Al Tasbih',
      color: Colors.red,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: const TasbehApp(),
    );
  }
}

class TasbehApp extends StatefulWidget {
  const TasbehApp({super.key});

  @override
  State<TasbehApp> createState() => _TasbehAppState();
}

class _TasbehAppState extends State<TasbehApp> {
  int? _counter;

  @override
  void initState() {
    _counter = 0;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    String a = "SubhanAlloh";
    String b = "Alhamdulillah";
    String c = "Allohu Akbar";
    String? matn;
    if (_counter! <= 33) {
      matn = a;
    } else if (_counter! > 33 && _counter! < 67) {
      matn = b;
    } else {
      matn = c;
    }
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Tasbeh",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 146, 19, 19),
        ),
        body: SafeArea(
          child: Stack(children: [
            Image.asset(
              'assets/image/background.jpg',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 115, top: 20),
              child: Text(
                matn,
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 146, 19, 19)),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 350),
                child: Text(
                  _counter.toString(),
                  style: const TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 146, 19, 19),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 410, left: 230),
              child: FloatingActionButton.large(
                  onPressed: () {
                    _counter = _counter! + 1;
                    setState(() {});
                  },
                  child: const Icon(
                    Icons.add,
                  ),
                  backgroundColor: const Color.fromARGB(255, 146, 19, 19)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 410, left: 60),
              child: FloatingActionButton.large(
                  onPressed: () {
                    _counter = _counter! - _counter!;
                    setState(() {});
                  },
                  child: const Icon(Icons.exposure_zero),
                  backgroundColor: const Color.fromARGB(255, 146, 19, 19)),
            ),
          ]),
        ));
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
  }
}


