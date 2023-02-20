import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/src/common_widgets/search/image_banner.dart';
import 'package:my_app/src/utils/colors.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: MyColors.black,
          appBar: AppBar(
            backgroundColor: MyColors.black,
            leading: GestureDetector(
              onTap: () => context.pushReplacement('/home'),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  CupertinoIcons.back,
                ),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                  width: 300,
                  child: CupertinoSearchTextField(
                    style: GoogleFonts.nunitoSans(color: MyColors.white),
                  ),
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              TabBar(
                indicatorColor: MyColors.white,
                indicatorWeight: 4,
                tabs: [
                  Tab(
                    child: Text(
                      'Men\'s',
                      style: GoogleFonts.nunitoSans(
                        color: MyColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Women\'s',
                      style: GoogleFonts.nunitoSans(
                        color: MyColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Flexible(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 260,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                'assets/images/search_page/Sale Poster.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 30,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Top Wear',
                                      style: GoogleFonts.inter(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: MyColors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image.asset(
                                        'assets/images/search_page/Jacket Card.png',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image.asset(
                                        'assets/images/search_page/Card.png',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image.asset(
                                        'assets/images/search_page/Shirts Card.png',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image.asset(
                                        'assets/images/search_page/Sweat Shirt Card.png',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image.asset(
                                        'assets/images/search_page/Hoodie Card.png',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            const ImageBanner(
                              path: 'assets/images/search_page/poster1.png',
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 30,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Bottom Wear',
                                      style: GoogleFonts.inter(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: MyColors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image.asset(
                                        'assets/images/search_page/Sweat Pants Card.png',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image.asset(
                                        'assets/images/search_page/Shorts Card.png',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image.asset(
                                        'assets/images/search_page/Jeans Card.png',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image.asset(
                                        'assets/images/search_page/Trousers Card.png',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //Women's Section

                    SingleChildScrollView(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 260,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                'assets/images/search_page/WSale Poster.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 30,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Top Wear',
                                      style: GoogleFonts.inter(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: MyColors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image.asset(
                                        'assets/images/search_page/WJacket Card.png',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image.asset(
                                        'assets/images/search_page/Tops & T-shirts Card.png',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image.asset(
                                        'assets/images/search_page/WShirts Card.png',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image.asset(
                                        'assets/images/search_page/WSweat Shirt Card.png',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image.asset(
                                        'assets/images/search_page/WHoodie Card.png',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            const ImageBanner(
                              path: 'assets/images/search_page/Wposter1.png',
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 30,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Bottom Wear',
                                      style: GoogleFonts.inter(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: MyColors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image.asset(
                                        'assets/images/search_page/WSweat Pants Card.png',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image.asset(
                                        'assets/images/search_page/WShorts Card.png',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image.asset(
                                        'assets/images/search_page/WJeans Card.png',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Image.asset(
                                        'assets/images/search_page/WTrousers Card.png',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                  ],
                                ),
                              ),
                            ),
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
    );
  }
}
