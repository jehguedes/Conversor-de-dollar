import 'package:flutter/material.dart';
import 'package:trabalho_mod4/widgets/TextFieldWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _realController = TextEditingController();
  final _dolarController = TextEditingController();
  double real= 0;
  double dolar = 0;
  double result = 0;
  String stResult = '';


  void _clearAll() {
    _realController.text = '';
    _dolarController.text = '';
    setState(() {
      stResult = '';
    });
      }
  
  void _calcular (){
    setState(() {
      real = double.parse(_realController.text);
      dolar = double.parse(_dolarController.text);
      result = real / dolar;
      stResult = 'Com $real reais é possível comprar '
          '${result.toStringAsFixed(2)} dólares a $dolar cada';
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("\$ Conversor brabo \$"),
            centerTitle: true,
            backgroundColor: Colors.amber,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.refresh),
                onPressed: _clearAll,
              )
            ]
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            Card(
              elevation: 10,
              shadowColor: Colors.white10,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [
                  Icon(Icons.monetization_on,
                      size: 150.0, color: Colors.amber),
                  SizedBox(
                    height: 20,
                  ),
                  buildTextField(
                    label: "Quantidade em Reais",
                    c: _realController,
                    prefix: "R\$ ",
                  ),
                  buildTextField(
                    label: "Cotação do Dolar",
                    c: _dolarController,
                    prefix: "R\$ ",
                  ),
                  RaisedButton(
                    onPressed: _calcular,
                    child: Text('Calcular'),
                  ),
                  Text(stResult,
                    style: TextStyle(
                      fontSize: 20,
                    ),)
                ]),
              ),
            ),
          ]
        ),
        
    );
  }
}
