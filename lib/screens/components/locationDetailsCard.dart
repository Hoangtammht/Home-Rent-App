import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationDetailsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          image: AssetImage('assets/images/image2.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 137),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0x3D000000),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Container(
                      width: 34,
                      height: 34,
                      padding: EdgeInsets.fromLTRB(13, 10, 13, 10.9),
                      child: SvgPicture.asset(
                        'assets/vectors/vector_5_x2.svg',
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0x3D000000),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Container(
                    width: 34,
                    height: 34,
                    padding: EdgeInsets.fromLTRB(11, 9, 11, 9.5),
                    child: SvgPicture.asset(
                      'assets/vectors/vector_7_x2.svg',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Dreamsville House',
                style: GoogleFonts.getFont(
                  'Raleway',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Jl. Sultan Iskandar Muda, Jakarta selatan',
                style: GoogleFonts.getFont(
                  'Raleway',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xFFD4D4D4),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 239.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x33FFFFFF),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Container(
                            width: 28,
                            height: 28,
                            padding: EdgeInsets.fromLTRB(6, 8, 6, 7.2),
                            child: SvgPicture.asset(
                              'assets/vectors/vector_18_x2.svg',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 7, 0, 7),
                        child: Text(
                          '6 Bedroom',
                          style: GoogleFonts.getFont(
                            'Raleway',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xFFD4D4D4),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0x33FFFFFF),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                        child: SizedBox(
                          width: 28,
                          height: 28,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(6, 6, 6, 6.6),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  child: SvgPicture.asset(
                                    'assets/vectors/group_11_x2.svg',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 7, 0, 7),
                        child: Text(
                          '4 Bathroom',
                          style: GoogleFonts.getFont(
                            'Raleway',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xFFD4D4D4),
                          ),
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
    );
  }
}