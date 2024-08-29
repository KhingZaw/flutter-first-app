import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: Color.fromARGB(255, 117, 113, 113)),
            ],
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 225, 252, 176),
                Color.fromARGB(255, 132, 193, 243)
              ],
            ),
          ),
          width: 330.0,
          height: 130.0,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello World",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              SizedBox(
                height: 7.0,
              ),
              Text("This is a new package",
                  style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}
