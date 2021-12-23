import 'package:get/get.dart';
import 'dart:math';

class GirarDados extends GetxController {
  String pasta = "imagens";
  String prefixo = "dice";
  int valor1 = 1;
  int valor2 = 1;
  String termino = ".png";

  List dados = ["imagens/dice1.png", "imagens/dice1.png"];

  RetornaImagem() {
    valor1 = Random().nextInt(5) + 1;
    valor2 = Random().nextInt(5) + 1;
    dados[0] = pasta + "/" + prefixo + valor1.toString() + termino;
    dados[1] = pasta + "/" + prefixo + valor2.toString() + termino;
    print(dados);
    update(["dados"]);
  }
}
