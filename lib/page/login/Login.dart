import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:labelle_cliente/page/agenda/agenda.dart';

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
      body: Container(
        height: altura_tela,
        child: SingleChildScrollView(
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
              Align(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SvgPicture.asset(
                        "images/bg.svg",
                        width: largura_tela,
                      ),
                    ),
                    Container(
                      height: altura_tela * 0.7,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 1),
                              child: TextFormField(
                                autofocus: false,
                                keyboardType: TextInputType.text,
                                style: new TextStyle(
                                    color: Colors.white, fontSize: 16),
                                decoration: InputDecoration(
                                    labelText: "Informe seu e-mail",
                                    labelStyle: TextStyle(color: Colors.white)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 1),
                              child: TextFormField(
                                autofocus: true,
                                obscureText: true,
                                keyboardType: TextInputType.text,
                                style: new TextStyle(
                                    color: Colors.white, fontSize: 16),
                                decoration: InputDecoration(
                                    labelText: "Informe sua senha",
                                    labelStyle: TextStyle(color: Colors.white)),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Esqueceu sua senha?",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (context) => Agenda()));
                                    },
                                    splashColor: Colors.grey,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.pinkAccent[100],
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
