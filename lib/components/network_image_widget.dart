import 'package:flutter/material.dart';

class NetWorkImage extends StatelessWidget {
  const NetWorkImage({super.key, required this.image, this.width, this.height});
  final String image;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: image != ""
          ? Image.network(
              image,
              width: width ?? MediaQuery.of(context).size.width * 0.3,
              height: height ?? MediaQuery.of(context).size.width * 0.3,
            )
          : Container(
              // Retornar uma imagem padrão para quando não houver imagem
              width: width ?? MediaQuery.of(context).size.width * 0.3,
              height: height ?? MediaQuery.of(context).size.width * 0.3,
            ),
    );
  }
}
