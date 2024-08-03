import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final String bedrooms;
  final String bathrooms;

  PropertyCard({
    required this.imagePath,
    required this.title,
    required this.price,
    required this.bedrooms,
    required this.bathrooms,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail');
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
        child: Align(
          alignment: Alignment.topLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFEFEFEF),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x0A000000),
                      offset: Offset(0, 0),
                      blurRadius: 0.5,
                    ),
                    BoxShadow(
                      color: Color(0x0A000000),
                      offset: Offset(0, 2),
                      blurRadius: 3,
                    ),
                    BoxShadow(
                      color: Color(0x0F000000),
                      offset: Offset(0, 16),
                      blurRadius: 12,
                    ),
                  ],
                ),
                child: Container(
                  width: 80,
                  height: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(
                      children: [
                        Positioned(
                          right: -24,
                          bottom: -4,
                          child: Container(
                            width: 128,
                            height: 85,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(imagePath),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 4.6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          title,
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
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          price,
                          style: GoogleFonts.getFont(
                            'Raleway',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xFF0A8ED9),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(4, 0, 0, 0),
                      child: SizedBox(
                        width: 220,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 8),
                                  width: 24,
                                  height: 24,
                                  child: SvgPicture.asset(
                                    'assets/vectors/vector_10_x2.svg',
                                    width: 16,
                                    height: 16,
                                  ),
                                ),
                                Text(
                                  bedrooms,
                                  style: GoogleFonts.getFont(
                                    'Raleway',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xFF858585),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 8),
                                  width: 24,
                                  height: 24,
                                  child: SvgPicture.asset(
                                    'assets/vectors/group_12_x2.svg',
                                    width: 16,
                                    height: 16,
                                  ),
                                ),
                                Text(
                                  bathrooms,
                                  style: GoogleFonts.getFont(
                                    'Raleway',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xFF858585),
                                  ),
                                ),
                              ],
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
