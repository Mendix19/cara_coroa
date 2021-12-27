import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  String valor;
  Result(this.valor);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    var imageApp = AssetImage("images/moeda_cara.png");
    var result = widget.valor;

    if (result == "cara") {
      setState(() {
        imageApp = AssetImage("images/moeda_cara.png");
      });
    } else {
      setState(() {
        imageApp = AssetImage("images/moeda_coroa.png");
      });
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff61bd86),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Color(0xff61bd86),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Image(image: imageApp),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  GestureDetector(
                      child: Image.asset('images/botao_voltar.png'),
                      onTap: () {
                        Navigator.pop(context);
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
