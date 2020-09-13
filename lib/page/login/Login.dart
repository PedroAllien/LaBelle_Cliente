import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    double largura_tela = MediaQuery.of(context).size.width;
    double altura_tela = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 22),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: largura_tela * 0.12),
                child: Row(
                  children: [
                    SvgPicture.asset("images/logo.svg"),
                    SvgPicture.asset("images/Text_labelle.svg")
                  ],
                ),
              ),
              SvgPicture.asset(
                "images/bg.svg",
                alignment: Alignment.center,
                width: largura_tela,
                height: altura_tela - altura_tela * 0.15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
