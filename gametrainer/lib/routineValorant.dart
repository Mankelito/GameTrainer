import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';


class RoutineValorant extends StatefulWidget {
  const RoutineValorant({super.key, required this.title});

  final String title;

  @override
  State<RoutineValorant> createState() => _RoutineValorantState();
}

class _RoutineValorantState extends State<RoutineValorant> {
  String gameicon = 'assets/images/valorant-1.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(top: 20)),
            SvgPicture.asset
            (
              gameicon,
              height: 150,
              width: 150,
            ),
            const Text
            (
              'Rutina a seguir',
              style: TextStyle
              (
                fontSize: 25
              ),
            ),
            Expanded(
              child: ListView( 
                children:[
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Practica Aim',
                      style: TextStyle(fontSize: 20),
                    )
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Practica movimiento',
                      style: TextStyle(fontSize: 20),
                    )
                  ),
                   Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Partidas rápidas 0/5',
                      style: TextStyle(fontSize: 20),
                    )
                  )
                ],
              ),
            ),
            SizedBox(
              child: ElevatedButton(
                onPressed: () 
                {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom
                (
                  //backgroundColor: Color.fromARGB(255, 216, 188, 252),
                  textStyle: const TextStyle(
                    fontSize: 30,
                    )
                ),
                child: const Text(
                  'Volver',
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20))
          ],
        ),
      ),
    );
  }
}
