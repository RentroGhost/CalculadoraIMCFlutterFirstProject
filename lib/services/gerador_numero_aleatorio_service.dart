import 'dart:math';

class GeradorNumeroAleatorioService{
   static int gerarNumeroAleatorio(int numeroMaximo) {
    	Random NumeroAleatorio = Random();
      return NumeroAleatorio.nextInt(numeroMaximo);
  }
}