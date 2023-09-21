import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/image_assets.dart';
import 'package:trilhaapp/pages/list_view.dart';
// import 'package:trilhaapp/pages/dados_cadastrais.dart';
import 'package:trilhaapp/pages/card_Page.dart';
import 'package:trilhaapp/pages/list_view_horizontal.dart';
import 'package:trilhaapp/pages/tarefa_page.dart';
import 'package:trilhaapp/services/shared/widgets/custom_drawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController(initialPage: 0);
  int posicaoPagina = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Main Page"),),
      drawer: CustomDrawer(), 
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (value){
                setState(() {
                  posicaoPagina = value;  
                });
              },
              children: const [
              CardPage(), 
              ImageAssetsPage(),
              ListViewPage(),
              ListViewHorizontal(),
              TarefaPage(),
            ],),
          ),
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              controller.jumpToPage(value);
            },
            currentIndex: posicaoPagina,
            items: 
          [
            BottomNavigationBarItem(label: "pag1", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "pag2", icon: Icon(Icons.add)),
            BottomNavigationBarItem(label: "pag3", icon: Icon(Icons.person)),
            BottomNavigationBarItem(label: "pag4", icon: Icon(Icons.image)),
            BottomNavigationBarItem(label: "Tarefas", icon: Icon(Icons.list)),
          ])
        ],
      ),
      )
    );
  }
}