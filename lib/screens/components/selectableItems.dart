import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectableItems extends StatefulWidget {
  @override
  _SelectableItemsState createState() => _SelectableItemsState();
}

class _SelectableItemsState extends State<SelectableItems> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        5,
            (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: _selectedIndex == index
                    ? LinearGradient(
                  begin: Alignment(0, -1.962),
                  end: Alignment(0, 1.628),
                  colors: <Color>[Color(0xFFA0DAFB), Color(0xFF0A8ED9)],
                  stops: <double>[0.14, 1],
                )
                    : null,
                color: _selectedIndex == index ? null : Color(0xFFF7F7F7),
                boxShadow: _selectedIndex == index
                    ? [
                  BoxShadow(
                    color: Color(0x1FA0DAFB),
                    offset: Offset(0, 8),
                    blurRadius: 8,
                  ),
                ]
                    : null,
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(16, 10, 16.9, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 1, 0, 1),
                      child: Text(
                        _getTextForIndex(index),
                        style: GoogleFonts.getFont(
                          'Raleway',
                          fontWeight: _selectedIndex == index
                              ? FontWeight.w500
                              : FontWeight.w400,
                          fontSize: 12,
                          color: _selectedIndex == index
                              ? Color(0xFFFFFFFF)
                              : Color(0xFF858585),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  String _getTextForIndex(int index) {
    switch (index) {
      case 0:
        return 'House';
      case 1:
        return 'Apartment';
      case 2:
        return 'Hotel';
      case 3:
        return 'Villa';
      case 4:
        return 'Cottage';
      default:
        return '';
    }
  }
}