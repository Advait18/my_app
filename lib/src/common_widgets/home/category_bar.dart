import 'package:flutter/material.dart';
import 'package:my_app/src/common_widgets/home/category.dart';

class MyCategoryBar extends StatefulWidget {
  const MyCategoryBar({super.key});

  @override
  State<MyCategoryBar> createState() => MyCategoryBarState();
}

class MyCategoryBarState extends State<MyCategoryBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.20,
      decoration: const BoxDecoration(
        color: Color(0xFF0C0C0C),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            MyCategory(
              path:
                  'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fhome%2Fnew.jfif?alt=media&token=83b09a99-f04d-48a9-b450-ececb10557b6',
              name: 'NEW',
            ),
            MyCategory(
              path:
                  'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fhome%2Ftops.jpg?alt=media&token=28d22d1d-be21-48c1-bbf8-0549b252d994',
              name: 'TOPS',
            ),
            MyCategory(
              path:
                  'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fhome%2Fjackets.jfif?alt=media&token=09b1d3f5-5e61-451e-b4a0-6518b41f37bd',
              name: 'JACKETS',
            ),
            MyCategory(
              path:
                  'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fhome%2Fpants.jpg?alt=media&token=10cfd864-87ba-49ea-a3ca-754582f816bc',
              name: 'PANtS',
            ),
          ],
        ),
      ),
    );
  }
}
