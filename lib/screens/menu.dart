import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF0A8ED9),
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 100, 0, 130),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                    ),
                    child: SizedBox(
                      width: 190,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(25, 11, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 1, 20, 1.3),
                              width: 24,
                              height: 24,
                              child:
                              SizedBox(
                                width: 16,
                                height: 16.7,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_1_x2.svg',
                                ),
                              ),
                            ),
                            Text(
                              'Home',
                              style: GoogleFonts.getFont(
                                'Raleway',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xFF0A8ED9),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 30, 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 87,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 1, 0, 2.3),
                          width: 24,
                          height: 24,
                          child:
                          SizedBox(
                            width: 12,
                            height: 15.8,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_15_x2.svg',
                            ),
                          ),
                        ),
                        Text(
                          'Profile',
                          style: GoogleFonts.getFont(
                            'Raleway',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(29, 0, 29, 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 95,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 2, 0, 0.1),
                          width: 24,
                          height: 24,
                          child:
                          SizedBox(
                            width: 14,
                            height: 16.9,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_14_x2.svg',
                            ),
                          ),
                        ),
                        Text(
                          'Nearby',
                          style: GoogleFonts.getFont(
                            'Raleway',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 1, 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Container(
                      width: 164,
                      height: 2,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 30, 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 116,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 1, 0, 2.5),
                          width: 24,
                          height: 24,
                          child:
                          SizedBox(
                            width: 12,
                            height: 15.5,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_11_x2.svg',
                            ),
                          ),
                        ),
                        Text(
                          'Bookmark',
                          style: GoogleFonts.getFont(
                            'Raleway',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(26, 0, 24, 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: SvgPicture.asset(
                            'assets/vectors/ic_notification_x2.svg',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 2, 0, 3),
                        child: Text(
                          'Notification',
                          style: GoogleFonts.getFont(
                            'Raleway',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(26, 0, 24, 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: SvgPicture.asset(
                            'assets/vectors/ic_message_x2.svg',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 3, 0, 2),
                        child: Text(
                          'Message',
                          style: GoogleFonts.getFont(
                            'Raleway',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 1, 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Container(
                      width: 164,
                      height: 2,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(26, 0, 24, 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1, 20, 1.4),
                        width: 24,
                        height: 24,
                        child:
                        SizedBox(
                          width: 16,
                          height: 16.6,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_12_x2.svg',
                          ),
                        ),
                      ),
                      Text(
                        'Setting',
                        style: GoogleFonts.getFont(
                          'Raleway',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(26, 0, 24, 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1, 20, 2),
                        width: 24,
                        height: 24,
                        child:
                        SizedBox(
                          width: 16,
                          height: 16,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_x2.svg',
                          ),
                        ),
                      ),
                      Text(
                        'Help',
                        style: GoogleFonts.getFont(
                          'Raleway',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(26, 0, 24, 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 2, 20, 1),
                        width: 24,
                        height: 24,
                        child:
                        SizedBox(
                          width: 16,
                          height: 16,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_17_x2.svg',
                          ),
                        ),
                      ),
                      Text(
                        'Logout',
                        style: GoogleFonts.getFont(
                          'Raleway',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
