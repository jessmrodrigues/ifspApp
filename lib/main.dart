import 'package:aula7/aula08/aula8.dart';
import 'package:aula7/aula09/aula09.dart';
import 'package:aula7/aula09/view/aula9_dashboard.dart';
import 'package:aula7/aula09/view/aula9_disciplinas.dart';
import 'package:aula7/aula10/aula10.dart';
import 'package:aula7/aula10/view/aula10_future.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/aula10_future',
      routes: {
        '/': (context) => const Aula08(),
        '/aula9': (context) => const Aula09(),
        '/aula9_dashboard': (context) => const Aula09Dashboard(),
        '/aula9_disciplinas': (context) => const Aula9Disciplinas(),
        '/aula10': (context) => const Aula10(),
        '/aula10_future': (context) => const Aula10Future(),
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
