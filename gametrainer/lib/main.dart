import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'menu.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'GameTrainer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _goToMainMenu()
  {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const MainMenu()),
    );
  }

  String userIcon ="assets/images/default_user.svg";

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
              const Padding(padding: EdgeInsets.all(50)),
              SvgPicture.asset(
                userIcon,
                height: 150,
                width: 150,
              ),
              const Padding(padding: EdgeInsets.only(top: 50)),
              SizedBox(
                child:Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 50)),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(20)),
                    ElevatedButton(
                      onPressed: _goToMainMenu, 
                      style: ElevatedButton.styleFrom
                      (
                       //backgroundColor: Color.fromARGB(255, 216, 188, 252),
                        textStyle: const TextStyle(
                          fontSize: 30,
                        )
                      ),
                      child: const Text(
                        'Iniciar Sesion'
                      )
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