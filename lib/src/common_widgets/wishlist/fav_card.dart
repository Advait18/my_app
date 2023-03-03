import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';

class FavCard extends StatelessWidget {
  final String name;
  final String image;
  final String price;
  const FavCard(
      {super.key,
      required this.name,
      required this.image,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.98,
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xFF191919),
            boxShadow: const [
              BoxShadow(
                color: Color(0xFF222222),
                offset: Offset(3, 3),
                blurRadius: 5,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: CachedNetworkImage(
                      imageUrl: image,
                      fit: BoxFit.cover,
                      width: 125,
                      height: 180,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        height: 48,
                        child: Text(
                          name,
                          style: GoogleFonts.nunitoSans(
                            color: MyColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Price:',
                            style: GoogleFonts.nunitoSans(
                              color: MyColors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            price,
                            style: GoogleFonts.nunitoSans(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Rating:',
                            style: GoogleFonts.nunitoSans(
                              color: MyColors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Icon(
                            CupertinoIcons.star_fill,
                            color: Colors.yellow[600],
                            size: 18,
                          ),
                          Icon(
                            CupertinoIcons.star_fill,
                            color: Colors.yellow[600],
                            size: 18,
                          ),
                          Icon(
                            CupertinoIcons.star_fill,
                            color: Colors.yellow[600],
                            size: 18,
                          ),
                          Icon(
                            CupertinoIcons.star_fill,
                            color: Colors.yellow[600],
                            size: 18,
                          ),
                          Icon(
                            CupertinoIcons.star_lefthalf_fill,
                            color: Colors.yellow[600],
                            size: 18,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 30,
                        width: 200,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(CupertinoIcons.bag_badge_plus),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(CupertinoIcons.trash),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
