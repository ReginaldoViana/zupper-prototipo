import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Pacotes extends StatefulWidget {
  const Pacotes({super.key});

  @override
  State<Pacotes> createState() => _PacotesState();
}

class _PacotesState extends State<Pacotes> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/praia.jpeg"), fit: BoxFit.cover),
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
                    )),
                child: Column(
                  children: [
                    RadioListTile(
                      title: const Text("Passagem + Hospedagem"),
                      value: "teste",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
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
                                'Origem',
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                          const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Cidade ou Aeroporto',
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
                                  Icons.flight,
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
                              labelText: 'Cidade ou Aeroporto',
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
                                'Passageiros',
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                          const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText:
                                  ' 1 Viajante(s), 1 Quarto(s), Econômica',
                            ),
                          ),
                        ],
                      ),
                    ),
                    RadioListTile(
                      title: const Text(
                        "Hospedagem para uma parte da viagem",
                        style: TextStyle(fontSize: 14),
                      ),
                      value: "teste",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      width: 400,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xfff2901b)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Buscar Pacote',
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
      ),
    );
  }
}
