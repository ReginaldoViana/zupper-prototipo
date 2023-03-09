import 'package:flutter/material.dart';

class Voos extends StatefulWidget {
  const Voos({super.key});

  @override
  State<Voos> createState() => _VoosState();
}

class _VoosState extends State<Voos> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/aviao.jpeg"), fit: BoxFit.cover),
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
                      title: const Text("Ida e Volta"),
                      value: "idaVolta",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text("Somente Ida"),
                      value: "somenteIda",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text("Multi Destinos"),
                      value: "multiDestinos",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    )
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
                            obscureText: false,
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
                              labelText: '1 passageiro, Economica',
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
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xfff2901b)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {
                          print('Hello');
                        },
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
      ),
    );
  }
}
