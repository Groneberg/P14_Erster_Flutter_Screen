import 'package:flutter/material.dart';

class TiTleBar extends StatelessWidget {
  final String title;
  final bool setBackIcon;
  // Icom icon;

  const TiTleBar({
    super.key,
    this.title = "Default Title",
    this.setBackIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 48,
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF3A4801), Color(0xFF7D9200)],
          stops: [0.0, 1.0],
        ),
        border: Border.all(
          color: Color(0xFF3A4801),
          width: 1.0, // 1px
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Color(0xFFFAFAFA),
        //     offset: Offset(0, 0),
        //     blurRadius: 10.0,
        //     spreadRadius: 0.0,
        //   )
        // ],
      ),
      child: Row(
        spacing: 32,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // TODO true => setBackIcon
          if (setBackIcon) Icon(Icons.arrow_back_ios_new, color: Colors.white),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.right,
              style: TextStyle(
                // TODO Font einbinden
                fontFamily: 'Roboto',
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Color(0xFFFAFAFA),
              ),
            ),
          ),
          Icon(
            // TODO Icon einbinden SVG
            Icons.home,
            size: 32,
            color: Color(0xFFFAFAFA),
          ),
        ],
      ),
    );
  }
}