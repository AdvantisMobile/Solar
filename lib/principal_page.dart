import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: unused_import
import 'package:solar/urllaunch.dart';
// ignore: unused_import
import 'package:url_launcher/url_launcher.dart';

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({Key? key}) : super(key: key);

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  final MethodChannel platform = const MethodChannel('acme.open_app/intent');
  // ignore: unused_field
  String _mensagem = '';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "lib/assets/image/solar.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SizedBox(
            //width: double.infinity,
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  width: 120.0,
                  height: 150.0,
                  child: ElevatedButton(
                    child: Image.asset("lib/assets/image/icons/tvaovivo.png"),
                    onPressed: () {
                      _abriTaovivo();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.transparent,
                      padding: EdgeInsets.all(10),
                      onSurface: Colors.deepOrange,
                      onPrimary: Colors.deepOrangeAccent.withGreen(255),
                      elevation: 40.0,
                      //shadowColor: Colors.deepOrange,
                    ),
                  ),
                ),
                SizedBox(
                  width: 120.0,
                  height: 150.0,
                  child: ElevatedButton(
                    child: Image.asset("lib/assets/image/icons/disney.png"),
                    onPressed: () {
                      _abrirDisneyplus();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.transparent,
                      padding: EdgeInsets.all(10),
                      onSurface: Colors.deepOrange,
                      onPrimary: Colors.deepOrangeAccent.withGreen(255),
                      elevation: 15.0,
                      //shadowColor: Colors.deepOrange,
                    ),
                  ),
                ),
                SizedBox(
                  width: 120.0,
                  height: 150.0,
                  child: ElevatedButton(
                    child: Image.asset("lib/assets/image/icons/netflix.png"),
                    onPressed: () {
                      _abriNetflix();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.transparent,
                      padding: EdgeInsets.all(10),
                      onSurface: Colors.deepOrange,
                      onPrimary: Colors.deepOrangeAccent.withGreen(255),
                      elevation: 15.0,
                      //shadowColor: Colors.deepOrange,
                    ),
                  ),
                ),
                SizedBox(
                  width: 120.0,
                  height: 150.0,
                  child: ElevatedButton(
                    child: Image.asset("lib/assets/image/icons/globo.png"),
                    onPressed: () {
                      _abrirGloboplay();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.transparent,
                      padding: EdgeInsets.all(10),
                      onSurface: Colors.deepOrange,
                      onPrimary: Colors.deepOrangeAccent.withGreen(255),
                      elevation: 15.0,
                      //shadowColor: Colors.deepOrange,
                    ),
                  ),
                ),
                SizedBox(
                  width: 120.0,
                  height: 150.0,
                  child: ElevatedButton(
                    child: Image.asset("lib/assets/image/icons/prime.png"),
                    onPressed: () {
                      _abrirAPrime();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.transparent,
                      padding: EdgeInsets.all(10),
                      onSurface: Colors.deepOrange,
                      onPrimary: Colors.deepOrangeAccent.withGreen(255),
                      elevation: 15.0,
                      //shadowColor: Colors.deepOrange,
                    ),
                  ),
                ),
                SizedBox(
                  width: 120.0,
                  height: 150.0,
                  child: ElevatedButton(
                    child: Image.asset("lib/assets/image/icons/youtube.png"),
                    onPressed: () {
                      _abriYoutube();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.transparent,
                      padding: EdgeInsets.all(10),
                      onSurface: Colors.deepOrange,
                      onPrimary: Colors.deepOrangeAccent.withGreen(255),
                      elevation: 15.0,
                      //shadowColor: Colors.deepOrange,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //floatingActionButton: FloatingActionButton(
          //child: Icon(Icons.developer_board), onPressed: launchURL),
        ),
      ],
    );
  }

//ABRIR NETFLIX
  void _abriNetflix() {
    // ignore: unused_local_variable
    const String pacoteNetflix = 'com.netflix.ninja';
    // ignore: unused_local_variable
    const String pacoNetflix = 'com.netflix.ninja';

    _abrirApp(pacoteNetflix);
  }

  //ABRIR DISNEY PLUS

  void _abrirDisneyplus() {
    // ignore: unused_local_variable
    const String pacoteDisney = 'com.disney.disneyplus';
    // ignore: unused_local_variable
    const String pacoDisney = 'com.disney.disneyplus';

    _abrirApp(pacoteDisney);
  }

//ABRIR HBO

  void _abrirHbo() {
    // ignore: unused_local_variable
    const String pacoteHbo = 'com.hbo.hbonow';
    // ignore: unused_local_variable
    const String pacoHbo = 'com.hbo.hbonow';

    _abrirApp(pacoteHbo);
  }

//ABRIR AMAZON PRIME

  void _abrirAPrime() {
    // ignore: unused_local_variable
    const String pacoteAmzon = 'com.amazon.avod.thirdpartyclient';
    // ignore: unused_local_variable
    const String pacoAzon = 'com.amazon.avod.thirdpartyclient';

    _abrirApp(pacoteAmzon);
  }

  //ABRIR GLOBO PLAY

  void _abrirGloboplay() {
    // ignore: unused_local_variable
    const String pacoteGlobo = 'com.globo.globotv';
    // ignore: unused_local_variable
    const String pacoGlobo = 'com.globo.globotv';

    _abrirApp(pacoteGlobo);
  }

  //ABRIR TVAOVIVO

  void _abriTaovivo() {
    // ignore: unused_local_variable
    const String pacoteTvaovivo = 'com.tvanetplayteste.app';
    // ignore: unused_local_variable
    const String pacoTvaovivo = 'com.tvanetplayteste.app';

    _abrirApp(pacoteTvaovivo);
  }

//Abrir Youtube

  void _abriYoutube() {
    // ignore: unused_local_variable
    const String pacoteYoutube = 'com.google.android.youtube.tv';
    // ignore: unused_local_variable
    const String pacoYoutube = 'com.google.android.youtube.tv';

    _abrirApp(pacoteYoutube);
  }

//Abrir Paramount

  void _abriParamount() {
    // ignore: unused_local_variable
    const String pacoteParamount = 'com.cbs.ca';
    // ignore: unused_local_variable
    const String pacoParamount = 'com.cbs.ca';

    _abrirApp(pacoteParamount);
  }

  void _abrirApp(String pacote) async {
    try {
      final Map<String, String> parametros = {'pacote': pacote};
      await platform.invokeMethod('openApp', parametros);

      _mensagem = '';
    } on PlatformException catch (e) {
      _mensagem = "Erro durante a tentativa de abrir o app: '${e.code}'.";
    }

    setState(() {});
  }
}
