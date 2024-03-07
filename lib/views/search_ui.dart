import 'package:flutter/material.dart';

class SearchUI extends StatefulWidget {
  const SearchUI({super.key});

  @override
  State<SearchUI> createState() => _SearchUIState();
}

class _SearchUIState extends State<SearchUI> {
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
      appBar: AppBar(
        title: Text('SEARCH'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: (Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50.0,
                    right: 50.0,
                  ),
                  child: Align(
                     alignment: Alignment.centerLeft,
                    child: Text(
                      'SEARCH',
                      // style: GoogleFonts.kanit(),
                      style: TextStyle(
                        fontFamily: 'Kanit-Bold.ttf',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 10.0), // Adjust padding as needed
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black,
                            width: 5.0), // Adjust border width as needed
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50.0,
                    right: 50.0,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'ALL RESULTS',
                      // style: GoogleFonts.kanit(),
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
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
            )),
          ),
        ),
      ),
    );
  }
}
