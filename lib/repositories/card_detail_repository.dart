import 'package:trilhaapp/model/card_detail.dart';

class CardDetailRepository{
  Future<CardDetail> get() async {
    await Future.delayed(Duration(seconds: 3));
    return CardDetail(
      1,
    "Meu card",
    "https://hermes.digitalinnovation.one/assets/diome/logo.png",
    "Olha esse texto de exemplo tentando ser maior doq deveria, e agora o que vai fazer quanto a ele? Acha que é capaz de derrotá-lo? Eu acho que não. Os poderes dele estão muito além dos poderes de qualquer mortal, dito isto esteja preparado para enfreta-lo até a morte, renda-se agora ou prepare-se para lutar, lutar, lutar!!!!",
    );
  }
}