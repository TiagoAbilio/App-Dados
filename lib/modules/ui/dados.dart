import 'package:appdados/modules/controller/dados_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GirarDados>(
      init: GirarDados(),
      builder: (_) => LayoutBuilder(
        builder: (context, constraints) {
          return GestureDetector(
            onTap: () {
              _.RetornaImagem();
            },
            child: Scaffold(
              appBar: AppBar(
                // ignore: prefer_const_constructors
                title: Text("Dicee"),
                centerTitle: true,
                backgroundColor: Colors.red[900],
              ),
              backgroundColor: Colors.red[900],
              body: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GetBuilder<GirarDados>(
                    id: "dados",
                    builder: (_) {
                      return Center(
                        child: Container(
                          width: constraints.maxWidth * 0.4,
                          height: 128,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(
                                _.dados[0],
                              ),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                              color: Colors.white,
                              width: 8,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  GetBuilder<GirarDados>(
                    id: "dados",
                    builder: (_) {
                      return Center(
                        child: Container(
                          width: constraints.maxWidth * 0.4,
                          height: 128,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(
                                _.dados[1],
                              ),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                              color: Colors.white,
                              width: 8,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
