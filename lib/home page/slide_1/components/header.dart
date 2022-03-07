import 'package:flutter/material.dart';
import 'package:shoes_app/theme.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefauktPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: kDefauktPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.clear_all),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hello Mr.Esan',
                      style: kTextBold,
                    ),
                    SizedBox(width: 4),
                    Image.asset(
                      'assets/images/Love.png',
                      height: kDefauktPadding + 5,
                      width: kDefauktPadding + 5,
                    )
                  ],
                )
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/images/Man.png'),
                // ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                height: kDefauktPadding * 7 - 10,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kDefauktPadding - 5),
                  gradient: LinearGradient(
                    colors: [kPurple1, kPurple2],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(kDefauktPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.account_balance_wallet,
                            color: kwhite1,
                          ),
                          Icon(
                            Icons.settings,
                            color: kwhite1,
                          ),
                        ],
                      ),
                      // Text(
                      //   'My Wallet',
                      //   style: kTextBold.copyWith(
                      //     color: kwhite1,
                      //     fontSize: kDefauktPadding,
                      //   ),
                      // ),
                      Text(
                        'Balance',
                        style: kTextBold.copyWith(color: kwhite1),
                      ),
                      Text(
                        '\$1,978',
                        style: kTextBold.copyWith(
                            color: kwhite1,
                            fontSize: kDefauktPadding + 5,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: kDefauktPadding - 10,
                right: kDefauktPadding,
                child: Row(
                  children: [
                    Icon(
                      Icons.file_download_outlined,
                      color: kwhite1,
                      size: kDefauktPadding * 2,
                    ),
                    Icon(
                      Icons.file_upload_outlined,
                      color: kwhite1,
                      size: kDefauktPadding * 2,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
