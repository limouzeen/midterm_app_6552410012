import 'package:flutter/material.dart';
import 'package:midterm_apps_6552410012/views/search_ui.dart';

class MyProfileUI extends StatefulWidget {
  const MyProfileUI({Key? key}) : super(key: key);

  @override
  State<MyProfileUI> createState() => _MyProfileUIState();
}

class _MyProfileUIState extends State<MyProfileUI> {
  @override
  Widget buildImageRow(
      List<String> imagePaths, double width, double height, double spacing) {
    List<Widget> children = [];

    for (int i = 0; i < imagePaths.length; i++) {
      children.add(
        Container(
          width: width,
          height: height,
          child: Image.asset(imagePaths[i]),
        ),
      );

      if (i < imagePaths.length - 1) {
        children.add(SizedBox(width: spacing));
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  ClipOval(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.width * 0.25,
                      child: Image.asset(
                        'assets/images/me.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Text(
                    'Am',
                    // style: GoogleFonts.kanit(
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: MediaQuery.of(context).size.height * 0.25,
                    // ),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.05,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Text(
                    'Amarat Kositwongsakul',
                    // style: GoogleFonts.kanit(
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: MediaQuery.of(context).size.height * 0.25,
                    // ),
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    'ID : 6552410012',
                    // style: GoogleFonts.kanit(
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: MediaQuery.of(context).size.height * 0.25,
                    // ),
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'FOLLOW ME',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Kanit-Black.ttf',
                      ),
                      // style: GoogleFonts.kanit(),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width * 0.9,
                          MediaQuery.of(context).size.height * 0.05),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SearchUI()),
                    );
                    },
                    child: Text(
                      'SEARCH',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width * 0.9,
                          MediaQuery.of(context).size.height * 0.05),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Container(
                  //       width: 100, // Set the width of the image
                  //       height: 100, // Set the height of the image
                  //       child: Image.asset('assets/images/1.jpg'),
                  //     ),
                  //     SizedBox(
                  //         width: 10), // Add SizedBox for spacing between images
                  //     Container(
                  //       width: 100, // Set the width of the image
                  //       height: 100, // Set the height of the image
                  //       child: Image.asset('assets/images/2.jpg'),
                  //     ),
                  //     SizedBox(
                  //         width: 10), // Add SizedBox for spacing between images
                  //     Container(
                  //       width: 100, // Set the width of the image
                  //       height: 100, // Set the height of the image
                  //       child: Image.asset('assets/images/1.jpg'),
                  //     ),
                  //   ],
                  // )
                  buildImageRow(
                    [
                      'assets/images/1.jpg',
                      'assets/images/2.jpg',
                      'assets/images/1.jpg'
                    ],
                    100, // Width of each image
                    100, // Height of each image
                    10, // Spacing between images
                  ),

                  buildImageRow(
                    [
                      'assets/images/4.jpg',
                      'assets/images/5.jpg',
                      'assets/images/6.jpg'
                    ],
                    100, // Width of each image
                    100, // Height of each image
                    10, // Spacing between images
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  buildImageRow(
                    [
                      'assets/images/7.jpg',
                      'assets/images/7.jpg',
                      'assets/images/7.jpg'
                    ],
                    100, // Width of each image
                    100, // Height of each image
                    10, // Spacing between images
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),

                  buildImageRow(
                    [
                      'assets/images/10.jpg',
                      'assets/images/11.jpg',
                      'assets/images/12.jpg'
                    ],
                    100, // Width of each image
                    100, // Height of each image
                    10, // Spacing between images
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  buildImageRow(
                    [
                      'assets/images/13.png',
                      'assets/images/14.png',
                      'assets/images/15.png'
                    ],
                    100, // Width of each image
                    100, // Height of each image
                    10, // Spacing between images
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  buildImageRow(
                    [
                      'assets/images/16.jpg',
                      'assets/images/17.jpg',
                      'assets/images/18.jpg'
                    ],
                    100, // Width of each image
                    100, // Height of each image
                    10, // Spacing between images
                  ),
                  buildImageRow(
                    [
                      'assets/images/19.jpg',
                      'assets/images/20.jpg',
                      'assets/images/21.jpg'
                    ],
                    100, // Width of each image
                    100, // Height of each image
                    10, // Spacing between images
                  ),
                  buildImageRow(
                    [
                      'assets/images/22.jpg',
                      'assets/images/23.jpg',
                      'assets/images/24.jpg'
                    ],
                    100, // Width of each image
                    100, // Height of each image
                    10, // Spacing between images
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
