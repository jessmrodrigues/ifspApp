import 'package:aula7/aula09/view/aula9_dashboard.dart';
import 'package:aula7/aula09/view/aula9_disciplinas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Aula09 extends StatefulWidget {
  const Aula09({super.key});

  @override
  State<Aula09> createState() => _Aula09State();
}

class _Aula09State extends State<Aula09> {
  var _itemSelecionado = 0;
  final _subtelas = const [Aula09Dashboard(), Aula9Disciplinas()];

  void _alterarBottomNav(int idx) {
    if (idx == 2) {
      Navigator.pop(context);
    } else {
      setState(() {
        _itemSelecionado = idx;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: _subtelas[_itemSelecionado],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _itemSelecionado,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.green,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
            BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'disciplinas',
                activeIcon: Icon(Icons.menu_book)),
            BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'sair')
          ],
          onTap: _alterarBottomNav,
        ),
      ),
    );
  }
}
