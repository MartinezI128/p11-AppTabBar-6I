import 'package:flutter/material.dart';

void main() => runApp(const AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar Iram Martinez",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: MiPaginaInicial(),
    );
  }
} //fin AppMiTabBar

//statefull
class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} //MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("TabBar Iram Martinez"),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "camas",
                  icon: Icon(Icons.access_time),
                ),
                Tab(
                  text: "sillon",
                  icon: Icon(Icons.access_alarms),
                ),
                Tab(
                  text: "sillas",
                  icon: Icon(Icons.accessibility_new),
                ),
                Tab(
                  text: "mesas",
                  icon: Icon(Icons.account_balance_rounded),
                ),
              ], //fin de tabs
            ), //finbottom tabBar
          ),
          body: TabBarView(children: const <Widget>[
            Center(
              child: Text(
                "King Size",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                "Sillones en L",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                "Sillas de jardin",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                "Mesas redondas",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ] //jardin de niños
              ), //fin de tabbarview
        )); //DefaultTabController
  } //finWidget
} //_MiPaginaInicialState
