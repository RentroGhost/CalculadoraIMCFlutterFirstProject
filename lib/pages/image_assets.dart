import 'package:flutter/material.dart';
import 'package:trilhaapp/services/shared/widgets/app_images.dart';

class ImageAssetsPage extends StatefulWidget {
  const ImageAssetsPage({super.key});

  @override
  State<ImageAssetsPage> createState() => _ImageAssetsPageState();
}

class _ImageAssetsPageState extends State<ImageAssetsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppImages.captura1,
        height: 50,),
        Image.asset(AppImages.captura2,
        width: double.infinity,),
        Image.asset(AppImages.captura3,
        height: 50,),
        Image.asset(AppImages.captura4,
        height: 50,),
        Image.asset(AppImages.coxinha,
        height: 50,),
      ],
    );
  }
}