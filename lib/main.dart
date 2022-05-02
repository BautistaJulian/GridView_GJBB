import 'package:flutter/material.dart';

void main() {
  runApp(VeterinariaAPP());
}

class VeterinariaAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter App Learning',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: const Articulos());
  }
}

class Articulos extends StatefulWidget {
  const Articulos({Key? key}) : super(key: key);
  @override
  _ArticulosState createState() => _ArticulosState();
}

class _ArticulosState extends State<Articulos> {
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
          title: const Text("Listado de articulos"),
          actions: [
            Icon(Icons.search),
            Icon(Icons.more_vert)
          ],
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
