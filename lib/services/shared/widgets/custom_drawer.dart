import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/dados_cadastrais.dart';
import 'package:trilhaapp/pages/login_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    context: context,
                     builder: (bc) {
                    return Wrap(
                      children: [
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                            },
                          title: Text("Camera"),
                            leading: const Icon(Icons.camera),
                            ),
                            ListTile(
                               onTap: () {
                            Navigator.pop(context);
                            },
                              title: const Text("Galeria"),
                              leading: const Icon(
                              Icons.photo_size_select_large_outlined
                              ),
                            )
                      ],);
                  }
                  );
                },
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  accountName: Text("Renato"),
                  accountEmail: Text("email@email.com"),
                  currentAccountPicture: 
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.network(
                      "https://hermes.digitalinnovation.one/assets/diome/logo.png"
                      ),
                      ),
                      ),
              ),
              InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 5,),
                    Text("Dados cadastrais"),
                  ],
                )),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                 MaterialPageRoute(
                  builder: (context) => DadosCadastraisPage()));
              },
              ),
              Divider(),
              SizedBox(height: 10,),
              InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    Icon(Icons.info),
                    SizedBox(width: 5,),
                    Text("Termos de uso e privacidade"),
                  ],
                )),
              onTap: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                  context: context, builder:(BuildContext bc) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                    child: const Column(
                      children: [
                        Text("Termos de uso e privacidade",
                        style: TextStyle(
                          fontSize: 20, 
                          fontWeight: FontWeight.bold), ),
                          SizedBox(height: 20,),
                        Text("Olha esse texto de exemplo tentando ser maior doq deveria, e agora o que vai fazer quanto a ele? Acha que é capaz de derrotá-lo? Eu acho que não. Os poderes dele estão muito além dos poderes de qualquer mortal, dito isto esteja preparado para enfreta-lo até a morte, renda-se agora ou prepare-se para lutar, lutar, lutar!!!!"
                  , style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                  ),
                      ],
                    ),
                   
                  );
                  
                });
              },
              ),
              Divider(),
              SizedBox(height: 10,),
              InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    Icon(Icons.album),
                    SizedBox(width: 5,),
                    Text("Configurações"),
                  ],
                )),
              onTap: () {},
              ),
            Divider(),
            SizedBox(height: 10,),
             InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    Icon(Icons.exit_to_app),
                    SizedBox(width: 5,),
                    Text("Sair"),
                  ],
                )),
              onTap: () {
                showDialog(context: context, builder: (BuildContext bc) {
                  return AlertDialog(
                    alignment: Alignment.centerLeft,
                    elevation: 8,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    title: const Text("Meu App", style: TextStyle(fontWeight: FontWeight.bold),),
                    content: const Wrap(
                      children: [
                        Text("Você sairá do aplicativo!"),
                        Text("Deseja realmente sair do aplicativo?")],
                    ),
                    actions: [
                      TextButton(onPressed: () {
                        Navigator.pop(context);
                      }, child: Text("Não")),
                      TextButton(onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      }, child: Text("Sim")),
                      ],
                  );
                });
              },
              ),
            ],
          ),
      );
  }
}