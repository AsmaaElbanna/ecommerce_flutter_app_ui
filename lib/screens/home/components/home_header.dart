import 'package:ecommerce_shopping/screens/home/components/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';

class HomeHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: Search(),
          ),
          SizedBox(width: 5),
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(30),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.2),
                    shape: BoxShape.circle),
                child: SvgPicture.asset(
                  'assets/icons/Cart Icon.svg',
                  color: kSecondaryColor,
                ),
              ),
            ),
          ),
          SizedBox(width: 5),
          Expanded(
            flex: 1,
            child: InkWell(
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
            ),
          ),
        ],
      ),
    );
  }
}
