import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homerentapp/screens/components/imageList.dart';
import 'package:homerentapp/screens/components/locationDropdown.dart';
import 'package:homerentapp/screens/components/propertyCard.dart';
import 'package:homerentapp/screens/components/selectableItems.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<String> imagePaths = [
    'assets/images/image.png',
    'assets/images/image1.png',
  ];


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
            padding: EdgeInsets.fromLTRB(20, 24, 0, 31),
            child: SizedBox(
              width: 475,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 335,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 5, 0, 4),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Location',
                                        style: GoogleFonts.getFont(
                                          'Raleway',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                  LocationDropdown(),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(80, 20, 0, 0),
                                child: SizedBox(
                                  width: 25,
                                  height: 25,
                                  child: SvgPicture.asset(
                                    'assets/vectors/ic_notification_1_x2.svg',
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 18),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFF7F7F7),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: SizedBox(
                                width: 279,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.only(left: 20.6, right: 14.9),
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_16_x2.svg',
                                        width: 22,
                                        height: 22,
                                      ),
                                    ),
                                    hintText: 'Search address, or near you',
                                    hintStyle: GoogleFonts.getFont(
                                      'Raleway',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xFF858585),
                                    ),
                                    border: InputBorder.none, // Remove the default border
                                    contentPadding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
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
                              width: 48,
                              height: 48,
                              padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                              child:
                              SizedBox(
                                width: 16,
                                height: 16,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_9_x2.svg',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 27),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 2, 0, 5),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              left: 5,
                              bottom: 0,
                              child: Opacity(
                                opacity: 0.24,
                                child: Container(
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
                                    width: 57,
                                    height: 20,
                                  ),
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 8),
                                    child: SelectableItems(),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: 50,
                              top: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment(1, 0),
                                    end: Alignment(-1, 0),
                                    colors: <Color>[Color(0xFFFFFFFF), Color(0x00FFFFFF)],
                                    stops: <double>[0, 1],
                                  ),
                                ),
                                child: Container(
                                  width: 20,
                                  height: 38,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 350,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                              child: SizedBox(
                                width: 150,
                                child: Text(
                                  'Near from you',
                                  style: GoogleFonts.getFont(
                                    'Raleway',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 3, 0, 2),
                              child: Text(
                                'See more',
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
                    ),
                  ),
                  ImageListView(imagePaths: imagePaths),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 24),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        width: 330,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 9.5, 0),
                              child: SizedBox(
                                width: 150,
                                child: Text(
                                  'Best for you',
                                  style: GoogleFonts.getFont(
                                    'Raleway',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 4, 0, 1),
                              child: Text(
                                'See more',
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
                    ),
                  ),
                  PropertyCard(
                    imagePath: 'assets/images/pexels_expect_best_3237801.jpeg',
                    title: 'Orchad House',
                    price: 'Rp. 2.500.000.000 / Year',
                    bedrooms: '6 Bedroom',
                    bathrooms: '4 Bathroom',
                  ),

                  PropertyCard(
                    imagePath: 'assets/images/ksenia_balandina_rcf_5_kswb_7_ms_unsplash_1.jpeg',
                    title: 'The Hollies House',
                    price: 'Rp. 2.000.000.000 / Year',
                    bedrooms: '5 Bedroom',
                    bathrooms: '2 Bathroom',
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}





