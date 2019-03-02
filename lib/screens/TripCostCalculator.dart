import 'package:flutter/material.dart';

class TripCostCalculator extends StatefulWidget {
  @override
  _TripCostCalculatorState createState() => _TripCostCalculatorState();
}

class _TripCostCalculatorState extends State<TripCostCalculator> {
  final _currencies = ['Dollars', 'Euro', 'Pounds'];
  final double _formDistance = 5.0;
  String _currency = 'Dollars';
  String result = "";
  TextEditingController distanceController = TextEditingController();
  TextEditingController avgController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      appBar: AppBar(
        title: Text("Trip Cost Calculator"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        color: Colors.white70,
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(top: _formDistance, bottom: _formDistance),
              child: TextField(
                controller: distanceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "e.g. 124",
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    labelText: "Distance"),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: _formDistance, bottom: _formDistance),
              child: TextField(
                controller: avgController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "e.g. 17",
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    labelText: "Distance per Unit"),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: _formDistance,
                        bottom: _formDistance,
                        right: _formDistance),
                    child: TextField(
                      controller: priceController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "e.g. 1.65",
                          labelStyle: textStyle,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          labelText: "Price"),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: _formDistance,
                        bottom: _formDistance,
                        left: _formDistance),
                    child: DropdownButton<String>(
                      items: _currencies.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      value: _currency,
                      onChanged: (value) {
                        _onDropDownChanged(value);
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    color: Theme.of(context).primaryColorDark,
                    textColor: Theme.of(context).primaryColorLight,
                    child: Text(
                      "Submit",
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      setState(() {
                        result = _calculate();
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    color: Theme.of(context).buttonColor,
                    textColor: Theme.of(context).primaryColorDark,
                    child: Text(
                      "Reset",
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      setState(() {
                        _reset();
                      });
                    },
                  ),
                )
              ],
            ),
            Text("Result: " + result)
          ],
        ),
      ),
    );
  }

  String _calculate() {
    double _distance = double.parse(distanceController.text);
    double _fuelCost = double.parse(priceController.text);
    double _consumption = double.parse(avgController.text);
    double _totalCost = _distance / _consumption * _fuelCost;
    String _result = 'The total cost of your trip is ' +
        _totalCost.toStringAsFixed(2) +
        ' ' +
        _currency;
    return _result;
  }

  void _onDropDownChanged(String value) {
    setState(() {
      this._currency = value;
    });
  }

  String _reset() {
    distanceController.text = '';
    priceController.text = '';
    avgController.text = '';
    setState(() {
      this.result = '';
    });
  }
}
