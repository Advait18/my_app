import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String path;
  const ImageBanner({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 450,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: path,
                width: MediaQuery.of(context).size.width * 0.95,
                fit: BoxFit.cover,
                fadeInDuration: const Duration(milliseconds: 100),
              ),
            ],
          ),
          Positioned(
            left: 40,
            bottom: 30,
            child: Center(
              child: CachedNetworkImage(
                imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FButton.png?alt=media&token=51b7e180-2cbb-4652-8b3d-2c53a3029b8e',
                width: MediaQuery.of(context).size.width * 0.8,
                fadeInDuration: const Duration(milliseconds: 100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
