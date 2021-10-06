import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';

class IconButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(30),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.2),
                shape: BoxShape.circle),
            child: SvgPicture.asset(
              'assets/icons/Bell.svg',
              color: kSecondaryColor,
            ),
          ),
          Positioned(
            top: -1,
            right: 8,
            child: Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 1.5, color: Colors.white)),
              child: Center(
                child: Text(
                  '',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
