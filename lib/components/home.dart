import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zupper/components/hoteis.dart';
import 'package:zupper/components/pacotes.dart';
import 'package:zupper/components/voos.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color(0xffffffff),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/img/zupper_logo.svg",
                color: const Color(0xff009daf),
                width: 180.0,
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            color: const Color(0xff008c99),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                DefaultTabController(
                  length: 3,
                  child: TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.flight,
                          color: Color(0xffd4e9ea),
                          size: 24.0,
                        ),
                        text: 'Voos',
                      ),
                      Tab(
                        icon: Icon(
                          Icons.hotel,
                          color: Color(0xffd4e9ea),
                          size: 30.0,
                        ),
                        text: 'Hotéis',
                      ),
                      Tab(
                        icon: Icon(
                          Icons.shopping_bag_outlined,
                          color: Color(0xffd4e9ea),
                          size: 36.0,
                        ),
                        text: 'Pacotes',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const TabBarView(
            children: [
              Voos(),
              Hoteis(),
              Pacotes(),
            ],
          ),
        ],
      ),
    );
  }
}
