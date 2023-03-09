import 'package:flutter/material.dart';

class Hoteis extends StatefulWidget {
  const Hoteis({super.key});

  @override
  State<Hoteis> createState() => _HoteisState();
}

class _HoteisState extends State<Hoteis> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/img/hotel.webp"), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: const Icon(
                                Icons.place,
                                color: Color(0xff008c99),
                                size: 24.0,
                              ),
                            ),
                            const Text(
                              'Destino',
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Qual o seu Destino?',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: const Icon(
                                Icons.event,
                                color: Color(0xff008c99),
                                size: 24.0,
                              ),
                            ),
                            const Text(
                              'Entrada',
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Check In',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: const Icon(
                                Icons.person,
                                color: Color(0xff008c99),
                                size: 24.0,
                              ),
                            ),
                            const Text(
                              'Hóspedes',
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '1 pessoa e 1 quarto',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    width: 400,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xfff2901b)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Buscar',
                        style: TextStyle(fontSize: 26),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
