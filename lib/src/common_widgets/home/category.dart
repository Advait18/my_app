import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCategory extends StatefulWidget {
  final String path;
  final String name;
  const MyCategory({Key? key, required this.path, required this.name})
      : super(key: key);

  @override
  State<MyCategory> createState() => _MyCategoryState();
}

class _MyCategoryState extends State<MyCategory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(widget.path),
            fit: BoxFit.cover,
          ),
        ),
        height: 120,
        width: 120,
        child: Center(
            child: Text(widget.name,
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xFFFFFFFF),
                  shadows: [
                    Shadow(
                      offset: const Offset(2, 4),
                      blurRadius: 3,
                      color: const Color(0xFF000000).withOpacity(0.3),
                    ),
                  ],
                ))),
      ),
    );
  }
}
