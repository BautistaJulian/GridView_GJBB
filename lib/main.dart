import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter App Learning',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/images/chaleco.jpg",
    "assets/images/correa.jpg",
    "assets/images/caja_de_arena.jpg",
    "assets/images/pelota.jpg",
    "assets/images/chaleco.jpg",
    "assets/images/correa.jpg",
    "assets/images/peluche.jpg",
    "assets/images/chaleco.jpg",
    "assets/images/correa.jpg",
    "assets/images/caja_de_arena.jpg",
    "assets/images/pelota.jpg",
    "assets/images/chaleco.jpg",
    "assets/images/correa.jpg",
    "assets/images/peluche.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter GridView"),
        ),
        body: GridView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(images[index], fit: BoxFit.cover);
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
