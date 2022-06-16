import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: _NoTengoCuenta() ,
      ),
        body: Stack(
      //El Stack se usa para posicionar elementos uno arriba de otros
      children: [
        _BackgroundCoverFondo(context),
        Column(
          //Posicionar elementos uno abajo de otros
          children: [
            _ImageCover(),
            _TextAppName(),
           
          ],
        )
      ],
    ));
  }

  //Fondo de aplicacion
  Widget _BackgroundCoverFondo(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
      color: Colors.amber,
    );
  }

  //Texto Principal de aplicacion
  Widget _TextAppName() {
    return const Text(
      'App Delivery',
      style: TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }

  Widget _NoTengoCuenta() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  const [
        Text('No tienes cuenta?'
        ),
        SizedBox(width: 50),
        Text('Registrate aqui'
        )
      ],

    );
  }

  //Imagen principal de aplicacion
  Widget _ImageCover() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/img/img_principal.webp',
          width: 250,
          height: 200,
        ),
      ),
    );
  }
}
