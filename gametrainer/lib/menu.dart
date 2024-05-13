import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gametrainer/main.dart';
import 'game_details.dart';
import 'user.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomeMenu(title: 'GameTrainer'),
    );
  }
}

class MyHomeMenu extends StatefulWidget {
  
  const MyHomeMenu({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomeMenu> createState() => _MyHomeMenu();
}

class _MyHomeMenu extends State<MyHomeMenu> {
  
  String trophyIcon ="assets/images/trophy-icon.svg";
  void _goToGameDetails()
  {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const MyGames(title: 'Juegos',)),
    );
  }

  void _goToUser()
  {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const User(title: 'Usuario',)),
    );
  }

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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: <Widget> [
              SvgPicture.asset(
                trophyIcon,
                height: 150,
                width: 150,),
              const Padding(
                padding: EdgeInsets.only(top: 50)
              ),
              ElevatedButton(
                onPressed: _goToGameDetails, 
                style: ElevatedButton.styleFrom
                (
                  textStyle: const TextStyle
                  (
                    fontSize: 25,
                  )
                ),
                child: const Text(
                  'Juegos'
                )
              ),
              const Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                onPressed: _goToUser, 
                style: ElevatedButton.styleFrom
                (
                  textStyle: const TextStyle
                  (
                    fontSize: 25,
                  )
                ),
                child: const Text(
                  'Usuario'
                )
              ),
              const Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                style: ElevatedButton.styleFrom
                (
                  textStyle: const TextStyle
                  (
                    fontSize: 25,
                  )
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                ), 
                child: const Text(
                  'Cerrar sesion'
                )
              ),
            ],
          )
        ),
      ),
    );
  }
}
