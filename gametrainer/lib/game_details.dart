import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gametrainer/routineValorant.dart';
import 'routineMinecraft.dart';


class MyGames extends StatefulWidget {
  const MyGames({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyGames> createState() => _MyGamesState();
}

class _MyGamesState extends State<MyGames> {

  String gameicon = 'assets/images/minecraft-1.svg';
  String gameicon2 = 'assets/images/valorant-1.svg';
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RoutineMinecraft(title: 'minecraft',)),
                      );
                    },
                    child: Center(
                      child: SvgPicture.asset(
                        gameicon,
                        fit: BoxFit.fill,
                        width: 110.0,
                        height: 110.0,
                      ),
                    )
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RoutineValorant(title: 'valorant',)),
                      );
                    },
                    child: Center(
                      child: SvgPicture.asset(
                        gameicon2,
                        fit: BoxFit.fill, // Fixes border issues
                        width: 110.0,
                        height: 110.0,
                      ),
                    )
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                const Padding(padding: EdgeInsets.only(bottom: 100)),
              ]
            ),
          ]
        ),
      ),
    );
  }
}
