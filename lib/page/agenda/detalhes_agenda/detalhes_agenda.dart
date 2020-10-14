import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Detalhes extends StatefulWidget {
  @override
  _DetalhesState createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.pinkAccent[100],
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Padding(
          padding: EdgeInsets.only(left: 50),
          child: Row(
            children: [
              SvgPicture.asset(
                "images/logo.svg",
                height: 50,
              ),
              Text(
                "LaBelle",
                style: TextStyle(color: Colors.pinkAccent[100]),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://flavialeal.com/blog/wp-content/uploads/2018/04/flavia-leal-blog-hair-dressing-apr-b.jpg"),
                    radius: 60,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    "Maria Judite Das Dores",
                    style: TextStyle(
                        color: Colors.pinkAccent[200],
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card(
                        color: Colors.pink[50],
                        child: Container(
                          width: 80,
                          height: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "14",
                                style: TextStyle(
                                    color: Colors.pinkAccent[200],
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Janeiro",
                                style: TextStyle(color: Colors.pinkAccent[100]),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.pink[50],
                        child: Container(
                          width: 80,
                          height: 80,
                          child: Center(
                            child: Text(
                              "08:00",
                              style: TextStyle(
                                  color: Colors.pinkAccent[200],
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFFE08BA8)),
                      ),
                      Container(
                        width: 300,
                        child: Column(
                          children: [
                            Text(
                              "Rua 12, Quadra 08 N° 21 - Marista - Goiânia - Go",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 20),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        color: Colors.grey[400],
                        height: 1,
                        width: 60,
                      ),
                      Text("Serviços",
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 20)),
                      Container(
                        color: Colors.grey[400],
                        height: 1,
                        width: 60,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SvgPicture.asset("images/hair-cut.svg"),
                          Text(
                            "Corte",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset("images/maquiagem.svg"),
                          Text(
                            "Manicure",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset("images/nail-2.svg"),
                          Text(
                            "Pedicure",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("images/cash.svg"),
                      Text(
                        "120,00",
                        style: TextStyle(
                            color: Color(0xFFE08BA8),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
