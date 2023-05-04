import 'package:aula7/aula08/classes/login_details.dart';
import 'package:aula7/aula08/widgets/login_text_field.dart';
import 'package:aula7/aula08/widgets/tipo_login.dart';
import 'package:aula7/aula09/aula09.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:collection/collection.dart';

class Aula08 extends StatefulWidget {
  const Aula08({super.key});

  @override
  State<Aula08> createState() => _Aula08State();
}

class _Aula08State extends State<Aula08> {
  bool _senhaVisivel = true;
  late final TextEditingController _userController;
  late final TextEditingController _senhaController;
  List<bool> _selectList = [true, false, false];
  TiposDeLogin tipoLogin = TiposDeLogin.email;
  var _memorizar = false;
  @override
  void initState() {
    _userController = TextEditingController();
    _senhaController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _userController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  void _alterarVisibilidade() {
    setState(() {
      _senhaVisivel = !_senhaVisivel;
    });
  }

  void _alterartipoLogin(int idx) {
    setState(() {
      tipoLogin = TiposDeLogin.values[idx];
      _selectList = _selectList.mapIndexed((pos, val) => pos == idx).toList();
    });
  }

  void _testarCampos() {
    debugPrint('Usuario: ${_userController.text}');
    debugPrint('Usuario: ${_senhaController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
          child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            const Image(
              image: AssetImage('assets/images/logoif.png'),
              width: 200,
            ),
            const SizedBox(
              height: 8,
            ),
            TipoLogin(
              selectedList: _selectList,
              alterarTipoLogin: _alterartipoLogin,
            ),
            const SizedBox(
              height: 8,
            ),
            LoginTextField(tipoLogin: tipoLogin, controller: _userController),
            SizedBox(height: 16),
            TextField(
              controller: _senhaController,
              obscureText: _senhaVisivel,
              decoration: InputDecoration(
                label: const Text('Senha'),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: _alterarVisibilidade,
                  icon: Icon(
                      _senhaVisivel ? Icons.visibility_off : Icons.visibility),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text("memorizar dados"),
                const SizedBox(
                  width: 8,
                ),
                Switch(
                    value: _memorizar,
                    onChanged: (value) {
                      setState(() {
                        _memorizar = value;
                      });
                    })
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width * 0.75, 30),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/aula9',
                  arguments: {'nome': 'Dourado'},
                );
              },
              child: const Text('login'),
            )
          ],
        ),
      )),
    )); // estrutura base da tela
  }
}
