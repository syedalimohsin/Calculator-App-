import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, ans = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1 + num2;
    });
  }

  void doSubtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1 - num2;
    });
  }

  void doMultiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1 * num2;
    });
  }

  void doDivison() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1 ~/ num2;
    });
  }

  void doclear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      ans = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Output: $ans",
              style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter 1st Number"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter 2nd Number"),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  color: Colors.redAccent,
                  onPressed: doAddition,
                ),
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.redAccent,
                  onPressed: doSubtraction,
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("*"),
                  color: Colors.redAccent,
                  onPressed: doMultiplication,
                ),
                new MaterialButton(
                  child: new Text("/"),
                  color: Colors.redAccent,
                  onPressed: doDivison,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("Clear"),
                    color: Colors.greenAccent,
                    onPressed: doclear,
                  ),
                ])
          ],
        ),
      ),
    );
  }
}
