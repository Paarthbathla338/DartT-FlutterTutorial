import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = "Paarth";
    int age = 14;
    return Scaffold(
        appBar: AppBar(
          title: Text("Catalog Page"),
        ),
        body: Center(
          child: Container(
            child: Text("My name is ${name} and I am ${age} years old."),
          ),
        ),
        drawer: Drawer());
  }
}
