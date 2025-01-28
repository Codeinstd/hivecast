import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hivecast/classes/style.dart';

class MyDetails extends StatefulWidget {
  const MyDetails({super.key});

  @override
  State<MyDetails> createState() => _MyDetailsState();
}

class _MyDetailsState extends State<MyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: style.white,

      // appbar //
      appBar: AppBar(
        backgroundColor: style.white,
        automaticallyImplyLeading: false,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // icon //
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 20,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            // text //
            Text(
              'Lenny\s Corner',
              style: GoogleFonts.outfit(
                color: style.black,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ],
        ),
        toolbarHeight: 30,
      ),

      // body //
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
              top: 16,
              right: 24,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // header //
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // avatar //
                      Image.asset(
                        'asset/bgimg.png',
                        height: 42,
                        width: 42,
                      ),
                      const SizedBox(
                        width: 16,
                      ),

                      // text //
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lenny Jones Harryson',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.outfit(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.35,
                              color: style.black,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          // subtitle //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // 01 //
                              Text(
                                'Tech Speaker',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.outfit(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.4,
                                  color: style.gray04,
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              // 02 //
                              Text(
                                'Mentor',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.outfit(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.4,
                                  color: style.gray04,
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              // 03 //
                              Text(
                                'Educator',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.outfit(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.4,
                                  color: style.gray04,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          // last line //
                          Container(
                            width: 90,
                            height: 24,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: style.gray,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              '11.1k Subscriber',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.outfit(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.15,
                                color: style.gray05,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  // content //
                  SizedBox(
                    height: 800,
                    child: ListView(
                      children: [
                        // row 01 //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // column 01 //
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: style.black,
                                  child: Image.asset(
                                    'asset/Mockupd.png',
                                    height: 103,
                                    width: 152,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // first line //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '2 min watch',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    // text 2 //
                                    Text(
                                      'Oct 16, 2024',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                  ],
                                ),
                                // big text //
                                Text(
                                  'How to mockup design',
                                  style: GoogleFonts.outfit(
                                    color: style.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    letterSpacing: -0.25,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // last line //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'asset/lennys.png',
                                      height: 12,
                                      width: 12,
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    // text 2 //
                                    Text(
                                      'Lenny\'s Corner',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // line 2 //
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: style.black,
                                  child: Image.asset(
                                    'asset/AE.png',
                                    height: 103,
                                    width: 152,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // first line //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '2 min watch',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    // text 2 //
                                    Text(
                                      'Oct 16, 2024',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                  ],
                                ),
                                // big text //
                                Text(
                                  'Learn after-effect',
                                  style: GoogleFonts.outfit(
                                    color: style.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    letterSpacing: -0.25,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // last line //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'asset/a-e.png',
                                      height: 12,
                                      width: 12,
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    // text 2 //
                                    Text(
                                      'Adobe After Effect',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        // row 02 //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // column 01 //
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: style.black,
                                  child: Image.asset(
                                    'asset/3D Design.png',
                                    height: 103,
                                    width: 152,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // first line //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '2 min watch',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    // text 2 //
                                    Text(
                                      'Oct 16, 2024',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                  ],
                                ),
                                // big text //
                                Text(
                                  '3D Digital Design',
                                  style: GoogleFonts.outfit(
                                    color: style.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    letterSpacing: -0.25,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // last line //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'asset/graphic_wallet.png',
                                      height: 12,
                                      width: 12,
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    // text 2 //
                                    Text(
                                      'Graphic Wallet',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // line 2 //
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: style.black,
                                  child: Image.asset(
                                    'asset/Interior.png',
                                    height: 103,
                                    width: 152,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // first line //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '2 min watch',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    // text 2 //
                                    Text(
                                      'Oct 16, 2024',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                  ],
                                ),
                                // big text //
                                Text(
                                  'Interior Design 101',
                                  style: GoogleFonts.outfit(
                                    color: style.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    letterSpacing: -0.25,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // last line //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'asset/PHmedia.png',
                                      height: 12,
                                      width: 12,
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    // text 2 //
                                    Text(
                                      'PH Media',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        // row 03 //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // column 01 //
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: style.black,
                                  child: Image.asset(
                                    'asset/Accessibility.png',
                                    height: 103,
                                    width: 152,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // first line //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '2 min watch',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    // text 2 //
                                    Text(
                                      'Oct 16, 2024',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                  ],
                                ),
                                // big text //
                                Text(
                                  'Design Accessibility',
                                  style: GoogleFonts.outfit(
                                    color: style.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    letterSpacing: -0.25,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // last line //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'asset/IXDF.png',
                                      height: 12,
                                      width: 12,
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    // text 2 //
                                    Text(
                                      'IXDF',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            // line 2 //
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // color: style.black,
                                  child: Image.asset(
                                    'asset/Art-love.png',
                                    height: 103,
                                    width: 152,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // first line //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '2 min watch',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    // text 2 //
                                    Text(
                                      'Oct 16, 2024',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                  ],
                                ),
                                // big text //
                                Text(
                                  'The Art Of Love 1',
                                  style: GoogleFonts.outfit(
                                    color: style.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    letterSpacing: -0.25,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // last line //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'asset/LC.png',
                                      height: 12,
                                      width: 12,
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    // text 2 //
                                    Text(
                                      'Love Corner',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        // row 03 //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // column 01 //
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: style.black,
                                  child: Image.asset(
                                    'asset/Mockupd.png',
                                    height: 103,
                                    width: 152,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // first line //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '2 min watch',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    // text 2 //
                                    Text(
                                      'Oct 16, 2024',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                  ],
                                ),
                                // big text //
                                Text(
                                  'How to mockup design',
                                  style: GoogleFonts.outfit(
                                    color: style.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    letterSpacing: -0.25,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // last line //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'asset/lennys.png',
                                      height: 12,
                                      width: 12,
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    // text 2 //
                                    Text(
                                      'Lenny\'s Corner',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // line 2 //
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: style.black,
                                  child: Image.asset(
                                    'asset/AE.png',
                                    height: 103,
                                    width: 152,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // first line //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '2 min watch',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    // text 2 //
                                    Text(
                                      'Oct 16, 2024',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                  ],
                                ),
                                // big text //
                                Text(
                                  'Learn after-effect',
                                  style: GoogleFonts.outfit(
                                    color: style.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    letterSpacing: -0.25,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                // last line //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'asset/a-e.png',
                                      height: 12,
                                      width: 12,
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    // text 2 //
                                    Text(
                                      'Adobe After Effect',
                                      style: GoogleFonts.outfit(
                                        color: style.gray04,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        letterSpacing: -0.25,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
