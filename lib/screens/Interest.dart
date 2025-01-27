import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hivecast/classes/style.dart';
import 'package:hivecast/screens/home.dart';
import 'package:hivecast/screens/splash.dart';
import 'package:hivecast/widgets/button.dart';

class Interest extends StatefulWidget {
  const Interest({super.key});

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  // late bool _isLoading;

  // @override
  // void initState() {
  //   _isLoading = true;
  //   Future.delayed(const Duration(seconds: 2), () {
  //     setState(() {
  //       _isLoading = false;
  //     });
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // backgroundColor: style.white,
        toolbarHeight: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 0, bottom: 24),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // close //
                    Container(
                        alignment: const Alignment(1, 0),
                        child: IconButton(
                          onPressed: () {
                            // Navigator.of(context).pop();
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Splash()),
                            );
                          },
                          icon: const Icon(
                            Icons.cancel_outlined,
                            color: style.gray01,
                            size: 28,
                          ),
                        )
                        // const Icon(
                        //   Icons.cancel_outlined,
                        //   color: style.gray01,
                        //   size: 28,
                        // ),
                        ),
                    const SizedBox(
                      height: 8,
                    ),
                    // header //
                    Text(
                      'Choose your interests',
                      style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        letterSpacing: -0.85,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    // sub-text //
                    Text(
                      'Lets personalize your content. You can change these settings at any time',
                      style: GoogleFonts.outfit(
                        color: style.gray04,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        height: 1.5,
                        letterSpacing: -0.25,
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    // row 1 //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // image 1 //
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('asset/design.png'),
                              width: 85,
                              height: 85,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            //
                            Text(
                              'Design',
                              style: GoogleFonts.outfit(
                                color: style.text2,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                letterSpacing: -0.25,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 24,
                        ),

                        // image 2 //
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('asset/business.png'),
                              width: 85,
                              height: 85,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            //
                            Text(
                              'Business',
                              style: GoogleFonts.outfit(
                                color: style.text2,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                letterSpacing: -0.25,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 24,
                        ),

                        // image 3 //
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('asset/tech.png'),
                              width: 85,
                              height: 85,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            //
                            Text(
                              'Tech',
                              style: GoogleFonts.outfit(
                                color: style.text2,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                letterSpacing: -0.25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 24,
                    ),

                    // row 2 //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // image 1 //
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('asset/Investment.png'),
                              width: 85,
                              height: 85,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            //
                            Text(
                              'Investment',
                              style: GoogleFonts.outfit(
                                color: style.text2,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                letterSpacing: -0.25,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 24,
                        ),

                        // image 2 //
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('asset/education.png'),
                              width: 85,
                              height: 85,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            //
                            Text(
                              'Education',
                              style: GoogleFonts.outfit(
                                color: style.text2,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                letterSpacing: -0.25,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 24,
                        ),

                        // image 3 //
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('asset/agriculture.png'),
                              width: 85,
                              height: 85,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            //
                            Text(
                              'Agriculture',
                              style: GoogleFonts.outfit(
                                color: style.text2,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                letterSpacing: -0.25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 24,
                    ),

                    // row 3 //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // image 1 //
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('asset/pets.png'),
                              width: 85,
                              height: 85,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            //
                            Text(
                              'Pets',
                              style: GoogleFonts.outfit(
                                color: style.text2,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                letterSpacing: -0.25,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 24,
                        ),

                        // image 2 //
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('asset/sports.png'),
                              width: 85,
                              height: 85,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            //
                            Text(
                              'Sports',
                              style: GoogleFonts.outfit(
                                color: style.text2,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                letterSpacing: -0.25,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 24,
                        ),

                        // image 3 //
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('asset/music.png'),
                              width: 85,
                              height: 85,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            //
                            Text(
                              'Music',
                              style: GoogleFonts.outfit(
                                color: style.text2,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                letterSpacing: -0.25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 24,
                    ),

                    // row 4 //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // image 1 //
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('asset/food.png'),
                              width: 85,
                              height: 85,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            //
                            Text(
                              'Food',
                              style: GoogleFonts.outfit(
                                color: style.text2,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                letterSpacing: -0.25,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 24,
                        ),

                        // image 2 //
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('asset/fashion.png'),
                              width: 85,
                              height: 85,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            //
                            Text(
                              'Fashion',
                              style: GoogleFonts.outfit(
                                color: style.text2,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                letterSpacing: -0.25,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 24,
                        ),

                        // image 3 //
                        Column(
                          children: [
                            const Image(
                              image: AssetImage('asset/dance.png'),
                              width: 85,
                              height: 85,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            // text 1 //
                            Text(
                              '2 min watch',
                              style: GoogleFonts.outfit(
                                color: style.text2,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                letterSpacing: -0.25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // button //

          Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: MyButton(
              iconData: null,
              buttonText: 'Continue',
              bgColor: style.black,
              txtColor: style.white,
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
                // loading circle //
                showDialog(
                    context: context,
                    builder: (context) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    });
                // open new screen //
                Future.delayed(Duration(seconds: 2));
                Navigator.of(context).pop();
                // Future.delayed(const Duration(seconds: 2), () {
                //   Navigator.of(context).pop();
                // });
              },
            ),
          ),
        ],
      ),
    );
  }
}
