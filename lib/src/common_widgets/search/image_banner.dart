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
              Image.asset(
                path,
                width: MediaQuery.of(context).size.width * 0.95,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Positioned(
            left: 40,
            bottom: 30,
            child: Center(
              child: Image.asset(
                'assets/images/search_page/Button.png',
                width: MediaQuery.of(context).size.width * 0.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
