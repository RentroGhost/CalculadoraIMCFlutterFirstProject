import 'package:flutter/material.dart';
import 'package:trilhaapp/model/card_detail.dart';
import 'package:trilhaapp/pages/card_detail_Page.dart';
import 'package:trilhaapp/repositories/card_detail_repository.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPagePageState();
}

class _CardPagePageState extends State<CardPage> {

  CardDetail? cardDetail;
  var cardDetailRepository =  CardDetailRepository();

  @override
  void initState() {
    super.initState();
    carregarDados();
  }
 
  void carregarDados() async {
    cardDetail = await cardDetailRepository.get();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 	16, vertical: 8),
          child:  cardDetail == null ? LinearProgressIndicator() : InkWell(
            onTap: () {
              Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => CardDetailPage(
                  cardDetail: cardDetail!,
                 )));
            },
            child: Hero(
              tag: cardDetail!.id,
              child: Card(
                elevation: 8,
                shadowColor: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.network(cardDetail!.url,
                        height: 20,),
                        Text(cardDetail!.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(cardDetail!.text,
                    textAlign: TextAlign.justify,
                    style:  TextStyle(
                      fontSize: 16, fontWeight: FontWeight.normal
                    ),),
                      
                    Container(
                      width: double.infinity,
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                         child: Text("Ler mais",
                          style: TextStyle(
                            decoration: TextDecoration.underline
                          ),)))
                  ],
                          ),
                ),
                  ),
            ),
          ),
        ),
      ]
    );
  }
}