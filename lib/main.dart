import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  bool isClicked = false;

  void _onTap() {
    setState(() {
      isClicked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: !isClicked
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Kamu mau gak jadi pacarku?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 200,
                    child: Image.asset('assets/cat.gif'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: _onTap,
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.pinkAccent[100]),
                        ),
                        child: const Text(
                          "MAU!!",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _onTap,
                        style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.black),
                        ),
                        child: const Text(
                          "Sekip Dulu",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : const Column(
              mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "You're done lil bro",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("""
IP. 92.28.211.23
N: 43.7462
W: 12.4893 SS Number: 6979191519182043
IPv6: fe80:5dcd.:ef69:fb22::d9 
UPP: Enabled DMZ: 10.112.42
MAC: 5A:78:3:7E:00
DNS: 8.8.8.8
ALT DNS: 1.1.1.8.1
DNS SUFFIX:
Dink WAN: 100.236
GATEWAY: 192.168
UDP OPEN PORT: 8080.80
"""),
                ],
              ),
      ),
    );
  }
}
