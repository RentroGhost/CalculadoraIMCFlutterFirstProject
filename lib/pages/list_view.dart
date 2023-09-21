import 'package:flutter/material.dart';
import 'package:trilhaapp/services/shared/widgets/app_images.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Image.asset(AppImages.captura1),
          title: const Text("Usuário 1"),
          subtitle: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Olá! Tudo bem?"),
              Text("08:59"),
            ],
          ),
          trailing: PopupMenuButton<String>(
            onSelected: (menu) {
              if (menu == "opcao2") {};
            },
            itemBuilder: (BuildContext bc) {
              return <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: "opcao1",
                  child: Text("Opção 1"),
                ),
                PopupMenuItem<String>(
                  value: "opcao2",
                  child: Text("Opção 2"),
                ),
                PopupMenuItem<String>(
                  value: "opcao3",
                  child: Text("Opção 3"),
                ),
              ];
            },
          ),
          ),
        Image.asset(AppImages.captura1),
        Image.asset(AppImages.captura2),
        Image.asset(AppImages.captura3),
        Image.asset(AppImages.captura4),
        Image.asset(AppImages.coxinha),
      ],);
  }
}