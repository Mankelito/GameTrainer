import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class User extends StatefulWidget {
  const User({super.key, required this.title});

  final String title;

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  String userIcon ="assets/images/default_user.svg";
  String game1 = 'assets/images/minecraft-1.svg';
  String game2 = 'assets/images/valorant-1.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child:Column(
          children: [
            const Padding(padding: EdgeInsets.all(25)),
            SvgPicture.asset(
              userIcon,
              height: 150,
              width: 150,
            ),
            const Padding(padding: EdgeInsets.only(top: 25)),
            SizedBox(
              child:Column(
                children: [
                  const Text(
                    'Nombre_Usuario',
                    style: TextStyle(
                      fontSize: 30
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  const Text(
                    'Juegos favoritos',
                    style: TextStyle(
                      fontSize: 20
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset
                      (
                        game1,
                        height: 100,
                        width: 100,
                      ),
                      const Padding(padding: EdgeInsets.all(20)),
                      SvgPicture.asset
                      (
                        game2,
                        height: 100,
                        width: 100,
                      )
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
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
                      child: const Text
                      (
                        'Volver',
                      ),
                    ),
                  ),
                ]
              )
            ),
          ],
        ),
      ),
    );
  }
}
