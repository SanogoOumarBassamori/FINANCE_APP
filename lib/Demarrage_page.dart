import 'package:finance_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DemaragePage extends StatefulWidget {
  const DemaragePage({super.key});

  @override
  State<DemaragePage> createState() => _DemaragePageState();
}

class _DemaragePageState extends State<DemaragePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 5,
                  child: Container(
                    child: Image.asset(
                      "assets/acceuil.png",
                      fit: BoxFit.cover,
                    ),
                  )),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "PICOLO",
                  style: TextStyle(
                      fontFamily: "Arial",
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    child: const Text(
                      "Make any payment and whenever you want to pay",
                      style: TextStyle(
                        fontFamily: "Arial",
                        fontSize: 42,
                      ),
                    ),
                  )),
              Expanded(
                  child: Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45)),
                      side: const BorderSide(color: Colors.grey),
                      backgroundColor: Colors.blue),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Get Started',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      )
                    ],
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
