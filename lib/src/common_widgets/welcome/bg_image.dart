import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class MyWelcomeImage extends StatelessWidget {
  final String path;
  const MyWelcomeImage({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Transform.scale(
        scaleX: 1.15,
        scaleY: 1.15,
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(path),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: AlignmentDirectional(0, 1),
          colors: [MyColors.black, Colors.transparent],
        )),
      ),
    ]);
  }
}
