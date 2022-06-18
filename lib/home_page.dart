import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController _num1 = new TextEditingController(text: "");
  final TextEditingController _num2 = new TextEditingController(text: "");

  void Addition() {
    setState(() {
      num1 = int.parse(_num1.text);
      num2 = int.parse(_num2.text);
      sum = num1 + num2;
    });
  }

  void Subtraction() {
    setState(() {
      num1 = int.parse(_num1.text);
      num2 = int.parse(_num2.text);
      sum = num1 - num2;
    });
  }

  void Multiplication() {
    setState(() {
      num1 = int.parse(_num1.text);
      num2 = int.parse(_num2.text);
      sum = num1 * num2;
    });
  }

  void Division() {
    setState(() {
      num1 = int.parse(_num1.text);
      num2 = int.parse(_num2.text);
      sum = (num1 / num2).toInt();
    });
  }

  void Modulus() {
    setState(() {
      num1 = int.parse(_num1.text);
      num2 = int.parse(_num2.text);
      sum = num1 % num2;
    });
  }

  void clear() {
    setState(() {
      num1 = 0;
      num2 = 0;
      sum = 0;
      _num1.text = "";
      _num2.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      clear();
                    },
                    child: Text(
                      "CLEAR",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    color: Colors.indigoAccent,
                  ),
                ],
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "ENTER THE FIRST NUMBER"),
              controller: _num1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "ENTER THE SECOND NUMBER"),
              controller: _num2,
            ),
            Padding(padding: const EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    Addition();
                  },
                  child: Text(
                    "+",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  color: Colors.indigoAccent,
                ),
                MaterialButton(
                  onPressed: () {
                    Subtraction();
                  },
                  child: Text(
                    "-",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  color: Colors.indigoAccent,
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    Multiplication();
                  },
                  child: Text(
                    "*",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  color: Colors.indigoAccent,
                ),
                MaterialButton(
                  onPressed: () {
                    Modulus();
                  },
                  child: Text(
                    "%",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  color: Colors.indigoAccent,
                ),
                MaterialButton(
                  onPressed: () {
                    Division();
                  },
                  child: Text(
                    "/",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  color: Colors.indigoAccent,
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.all(10)),
            Text(
              "Output: $sum",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black),
            ),
          ],
        ),
      )),
    );
  }
}
