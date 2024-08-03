import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homerentapp/screens/components/imageContainer.dart';
import 'package:homerentapp/screens/components/locationDetailsCard.dart';

class DetailProductScreen extends StatefulWidget {
  const DetailProductScreen({super.key});

  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFAFAFA),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 20,
                          right: 20,
                          bottom: 0,
                          child: Opacity(
                            opacity: 0.1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF000000),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                width: 295,
                                height: 100,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: -20,
                                right: -20,
                                top: -20,
                                bottom: -20,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    width: 335,
                                    height: 300,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: LocationDetailsCard(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Description',
                            style: GoogleFonts.getFont(
                              'Raleway',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars... ',
                          style: GoogleFonts.getFont(
                            'Raleway',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            height: 1.5,
                            color: Color(0xFF858585),
                          ),
                          children: [
                            TextSpan(
                              text: 'Show More',
                              style: GoogleFonts.getFont(
                                'Raleway',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                height: 1.3,
                                color: Color(0xFFA0DAFB),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 24, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0x998198AC),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'assets/images/jurica_koletic_7_yvzyze_itc_8_unsplash_adobespark_1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                              ,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 2, 0, 1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                                  child: Text(
                                    'Garry Allen',
                                    style: GoogleFonts.getFont(
                                      'Raleway',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Owner',
                                    style: GoogleFonts.getFont(
                                      'Raleway',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xFF858585),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 6, 0, 6),
                        child: SizedBox(
                          width: 72,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0x800A8ED9),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Container(
                                    width: 28,
                                    height: 28,
                                    padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                                    child:
                                    Container(
                                      width: 24,
                                      height: 24,
                                      child:
                                      SizedBox(
                                        width: 12,
                                        height: 12,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_6_x2.svg',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0x800A8ED9),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Container(
                                  width: 28,
                                  height: 28,
                                  padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                                  child:
                                  Container(
                                    width: 24,
                                    height: 24,
                                    child:
                                    SizedBox(
                                      width: 12,
                                      height: 12,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_4_x2.svg',
                                      ),
                                    ),
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
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 19, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Gallery',
                            style: GoogleFonts.getFont(
                              'Raleway',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ),
                      SingleChildScrollView(scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ImageContainer(
                              imagePath: 'assets/images/item1.png',
                              width: 75,
                              height: 60,
                            ),
                            ImageContainer(
                              imagePath: 'assets/images/item2.png',
                              width: 75,
                              height: 60,
                            ),
                            ImageContainer(
                              imagePath: 'assets/images/item3.png',
                              width: 75,
                              height: 60,
                            ),
                            ImageContainer(
                              imagePath: 'assets/images/item4.png',
                              width: 75,
                              height: 60,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Image.asset('assets/images/Map.png'),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0, -1),
                          end: Alignment(0, 1),
                          colors: <Color>[Color(0x00FFFFFF), Color(0xFFFFFFFF)],
                          stops: <double>[0.285, 0.62],
                        ),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20, 81, 20, 37),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                right: 13,
                                bottom: -7,
                                child: Opacity(
                                  opacity: 0.24,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 92,
                                      height: 20,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 25,),
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0, 1, 28, 1),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  'Price',
                                                  style: GoogleFonts.getFont(
                                                    'Raleway',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    color: Color(0xFF858585),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Rp. 2.500.000.000 / Year',
                                              style: GoogleFonts.getFont(
                                                'Raleway',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: LinearGradient(
                                          begin: Alignment(0, -1.962),
                                          end: Alignment(0, 1.628),
                                          colors: <Color>[Color(0xFFA0DAFB), Color(0xFF0A8ED9)],
                                          stops: <double>[0.14, 1],
                                        ),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(0, 12, 0.1, 12),
                                        child:
                                        Center(
                                          child: Text(
                                            'Rent Now',
                                            style: GoogleFonts.getFont(
                                              'Raleway',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: Color(0xFFFFFFFF),
                                            ),
                                          ),
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
