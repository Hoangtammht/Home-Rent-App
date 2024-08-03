import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationDropdown extends StatefulWidget {
  @override
  _LocationDropdownState createState() => _LocationDropdownState();
}

class _LocationDropdownState extends State<LocationDropdown> {
  String selectedLocation = 'Jakarta';
  List<String> locations = ['Jakarta', 'Bali', 'Bandung', 'Surabaya'];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DropdownButton<String>(
          value: selectedLocation,
          icon: Padding(
            padding: EdgeInsets.only(left: 2.0),
            child: SvgPicture.asset(
              'assets/vectors/vector_13_x2.svg',
              width: 12,
              height: 12,
            ),
          ),
          style: GoogleFonts.raleway(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Color(0xFF000000),
          ),
          underline: SizedBox(), // Remove the default underline
          onChanged: (String? newValue) {
            setState(() {
              selectedLocation = newValue!;
            });
          },
          items: locations.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}