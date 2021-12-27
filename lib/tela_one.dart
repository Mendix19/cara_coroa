// ignore_for_file: recursive_getters

import 'package:flutter/material.dart';
import 'package:cara_coroa/result.dart';
import 'dart:math';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo.png'),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: GestureDetector(
                  child: Image.asset(
                    'images/botao_jogar.png',
                  ),
                  onTap: () {
                    var opcoes = ["cara", "coroa"];
                    var choose = Random().nextInt(2);
                    var chooseApp = opcoes[choose];

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext) => Result(chooseApp)));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
