import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/src/common_widgets/search/image_banner.dart';
import 'package:my_app/src/utils/colors.dart';

class Search extends StatefulWidget {
  const Search({super.key});
  static bool ontap = false;
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
                padding: EdgeInsets.all(12),
                child: Icon(
                  CupertinoIcons.back,
                ),
              ),
            ),
            title: SizedBox(
              height: 40,
              width: 300,
              child: CupertinoSearchTextField(
                // controller: _searchController,
                style: GoogleFonts.nunitoSans(color: MyColors.white),
                onTap: () {
                  Search.ontap = true;
                  context.push('/searchresults');
                },
              ),
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
                              child: CachedNetworkImage(
                                imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FSale%20Poster.png?alt=media&token=817ccae2-4917-4440-8d7b-590c3a52d0a9',
                                fit: BoxFit.fitWidth,
                                fadeInDuration: const Duration(milliseconds: 100),
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
                                      child: CachedNetworkImage(
                                        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FJacket%20Card.png?alt=media&token=5c824fb1-e950-4ca3-a832-9cabbe3fe09a',
                                        fadeInDuration: const Duration(milliseconds: 100),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: CachedNetworkImage(
                                        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FCard.png?alt=media&token=d3b09be9-7f61-4a25-9d8b-2fda3119795b',
                                        fadeInDuration: const Duration(milliseconds: 100),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: CachedNetworkImage(
                                        imageUrl:'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FShirts%20Card.png?alt=media&token=cea217c6-62bb-45c1-b234-997c4fe09498',
                                        fadeInDuration: const Duration(milliseconds: 100),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: CachedNetworkImage(
                                        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FSweat%20Shirt%20Card.png?alt=media&token=2fef91ac-c3a1-4d6b-b161-0f317ddc3379',
                                        fadeInDuration: const Duration(milliseconds: 100),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: CachedNetworkImage(
                                        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FHoodie%20Card.png?alt=media&token=af129f4f-ae9d-4857-850f-fdc280286e51',
                                        fadeInDuration: const Duration(milliseconds: 100),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            const ImageBanner(
                              path: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2Fposter1.png?alt=media&token=ef5fff9d-1898-4b8b-b1a3-b696bb1d6c8f',
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
                                      child: CachedNetworkImage(
                                        imageUrl:'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FSweat%20Pants%20Card.png?alt=media&token=bb99a290-de03-4e9f-9076-c201967afc58',
                                        fadeInDuration: const Duration(milliseconds: 100),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: CachedNetworkImage(
                                        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FShorts%20Card.png?alt=media&token=363f66f7-03cf-425f-93b2-f10df1c4354f',
                                        fadeInDuration: const Duration(milliseconds: 100),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: CachedNetworkImage(
                                        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FJeans%20Card.png?alt=media&token=053ecc78-c493-48eb-b0fc-d821227d3a5a',
                                        fadeInDuration: const Duration(milliseconds: 100),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: CachedNetworkImage(
                                        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FTrousers%20Card.png?alt=media&token=e2975713-9cad-4c6d-9949-3193984bdbcf',
                                        fadeInDuration: const Duration(milliseconds: 100),
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
                              child: CachedNetworkImage(
                                imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FWSale%20Poster.png?alt=media&token=1e5715a6-c307-4a57-8e2e-5dac287e3fc9',
                                fit: BoxFit.fitWidth,
                                fadeInDuration: const Duration(milliseconds: 100),
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
                                      child: CachedNetworkImage(
                                        imageUrl:'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FWJacket%20Card.png?alt=media&token=838c8243-f573-465c-bfd3-e6258fa5b84a',
                                        fadeInDuration: const Duration(milliseconds: 100),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: CachedNetworkImage(
                                        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FTops%20%26%20T-shirts%20Card.png?alt=media&token=2c1fcc29-dd0f-4301-8833-802425700707',
                                        fadeInDuration: const Duration(milliseconds: 100),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: CachedNetworkImage(
                                        imageUrl:'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FWShirts%20Card.png?alt=media&token=68c8aefd-625f-4f89-8dc8-6e9e73828d1a',
                                        fadeInDuration: const Duration(milliseconds: 100),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: CachedNetworkImage(
                                        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FWSweat%20Shirt%20Card.png?alt=media&token=756d7e46-9526-4e22-a2df-a08bbe9fcf08',
                                        fadeInDuration: const Duration(milliseconds: 100),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: CachedNetworkImage(
                                        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FWHoodie%20Card.png?alt=media&token=0d329dfe-ef0f-48d2-974c-5b98d5c907a3',
                                        fadeInDuration: const Duration(milliseconds: 100),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            const ImageBanner(
                              path: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FWposter1.png?alt=media&token=99de47cb-5b2d-4e71-a2ce-df4b7c8b9d08',
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
                                      child: CachedNetworkImage(
                                        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FWSweat%20Pants%20Card.png?alt=media&token=6075fbe2-43f2-43a1-b39c-2f51fb595a38',
                                        fadeInDuration: const Duration(milliseconds: 100),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: CachedNetworkImage(
                                        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FWShorts%20Card.png?alt=media&token=1590d248-43fb-4ea5-ab22-1bb984a0714c',
                                        fadeInDuration: const Duration(milliseconds: 100),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: CachedNetworkImage(
                                        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FWJeans%20Card.png?alt=media&token=30ab603b-1fa3-4c27-be73-a2c078ca87d0',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      height: 250,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: CachedNetworkImage(
                                        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/basics-aac0f.appspot.com/o/images%2Fsearch%2FWTrousers%20Card.png?alt=media&token=8c0855d2-bac2-44b0-9d63-9432bc6e248e',
                                        fadeInDuration: const Duration(milliseconds: 100),
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
