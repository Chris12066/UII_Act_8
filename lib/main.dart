import 'package:flutter/material.dart';

void main() => runApp(const AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo Tabbar Christian Alcantara",
      theme: ThemeData(primarySwatch: Colors.lime),
      home: const MiPaginaInicial(),
    );
  }
} // fin AppMiTabBar

//stateful
class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: const Text("Concesionaria y refaccionaria",
              style: TextStyle(color: Colors.white)),
          centerTitle: true,
          bottom: const TabBar(tabs: [
            Tab(
              text: "180SX",
              icon: Icon(Icons.car_rental),
            ),
            Tab(
              text: "S15",
              icon: Icon(Icons.car_rental),
            ),
            Tab(
              text: "NSX",
              icon: Icon(Icons.car_rental),
            ),
            Tab(
              text: "S14",
              icon: Icon(Icons.car_rental),
            ),
          ] //fin de tab
              ), //fin bottom tabbar
        ),
        body: TabBarView(children: <Widget>[
          _buildImage(
              "https://raw.githubusercontent.com/Chris12066/Img_iOS/main/FlutterFlowA13/180sx.jpg",
              Colors.blue), // Estilo diferente para la primera imagen
          _buildImage(
              "https://raw.githubusercontent.com/Chris12066/Img_iOS/main/FlutterFlowA13/s15.jpg",
              Colors.green), // Estilo diferente para la segunda imagen
          _buildImage(
              "https://raw.githubusercontent.com/Chris12066/Img_iOS/main/FlutterFlowA13/nsx.jpg",
              Colors.red), // Estilo diferente para la tercera imagen
          _buildImage(
              "https://raw.githubusercontent.com/Chris12066/Img_iOS/main/FlutterFlowA13/s14.jpg",
              Colors.orange), // Estilo diferente para la cuarta imagen
        ] //jardin de niños
            ),
      ),
    ); //DefaultTabController
  } //fin widgets

  Widget _buildImage(String imageUrl, Color color) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60.0),
        child: Container(
          color: color, // Cambia el color de fondo de la imagen
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
} // _MiPaginaInicialState
