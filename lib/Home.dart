// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'main.dart';
import 'Selesai.dart';
import 'status_data.dart';
import 'jenis_asuransi.dart';

class Home extends StatelessWidget {
  final String username;
  final String password;

  const Home({
    super.key, 
    required this.username, 
    required this.password
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selamat Pagi, $username!'),
        backgroundColor: Color(0xFFFC8B03),
        automaticallyImplyLeading: false, // Hide the back button
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              icon: const Icon(Icons.notifications), // Bell icon for notifications
              onPressed: () {
                // Handle notification icon click here
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: PopupMenuButton<String>(
              onSelected: (value) {
                if (value == 'LOG OUT') {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                  );
                }
              },
              itemBuilder: (BuildContext context) {
                return ['LOG OUT'].map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
              child: const CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/images/Arlecchino.jpeg'),
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(40, 40, 16, 40), 
              child: Text(
                'SURVEI\nKLAIM ASURANSI',
                style: TextStyle(
                  fontSize: 30, 
                  fontFamily: 'K2D',
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            SizedBox(
              height: 20,
              child: Container(
                color: const Color(0xFFD7D7D7), 
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 40, 16, 0), 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Proses()),
                      );
                    },
                    child: buildBorderedImage('assets/images/Review.png', 90, 90),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Approved()),
                      );
                    },
                    child: buildBorderedImage('assets/images/Approved.png', 90, 90),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Rejected()),
                      );
                    },
                    child: buildBorderedImage('assets/images/Rejected.png', 90, 90),
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.fromLTRB(12, 16, 16, 40), 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'On Review',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'K2D',
                    ),
                  ),
                  Text(
                    'Approved',
                    style: TextStyle(
                      fontFamily: 'K2D',
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'Rejected',
                    style: TextStyle(
                      fontFamily: 'K2D',
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
              child: Container(
                color: const Color(0xFFD7D7D7), 
              ),
            ),

            const Padding(
              padding: EdgeInsets.fromLTRB(16, 30, 16, 30), // Added padding to the top
              child: Text(
                'Jenis Asuransi',
                style: TextStyle(
                  fontFamily: 'K2D',
                  fontSize: 20, 
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Kendaraan()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFC8B03),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                      child: Column(
                        children: [
                          Image.asset('assets/images/car.png', width: 120, height: 120),
                          const Text(
                            'Kendaraan',
                            style: TextStyle(
                              fontFamily: 'K2D',
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Rumah()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFEC40A),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                      child: Column(
                        children: [
                          Image.asset('assets/images/house.png', width: 120, height: 120),
                          const Text(
                            'Rumah Tinggal',
                            style: TextStyle(
                              fontFamily: 'K2D',
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
              child: Container(
                color: const Color(0xFFD7D7D7), 
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 30, 50, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Permintaan Selesai',
                    style: TextStyle(
                      fontFamily: 'K2D',
                      fontSize: 20, 
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 24, // Set the height of the button
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DataSelesai(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Set background color to blue
                        elevation: 5, // Add drop shadow
                      ),
                      child: const Text('Tampilkan semua', style: TextStyle(fontSize: 10)), // Set font size for the button text
                    ),
                  ),
                ],
              ),
            ),
                  
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFC8B03),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                const Text(
                                  'Kendaraan',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(width: 130),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFB0B0B0),
                                    borderRadius: BorderRadius.circular(5.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: const Offset(0.0, 5.0),
                                        blurRadius: 3.0,
                                      ),
                                    ],
                                  ),
                                  child: const Text(
                                    'Expired',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              'Motor',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              'Diminta pada 19 September 2023',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFEC40A),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                const Text(
                                  'Kendaraan',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(width: 130),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFB0B0B0),
                                    borderRadius: BorderRadius.circular(5.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        offset: const Offset(0.0, 5.0),
                                        blurRadius: 3.0,
                                      ),
                                    ],
                                  ),
                                  child: const Text(
                                    'Expired',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              'Mobil',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              'Diminta pada 27 September 2023',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                      ],
                    ),
                  )
            // Add more widgets for the final section as needed
          ],
        ),
      ),
    );
  }

    // Buat Image Menampilkan bordernya
    Widget buildBorderedImage(String imagePath, double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFC8C8C8), // Border color
          width: 1.0, 
        ),
        borderRadius: BorderRadius.circular(10.0), 
      ),
      child: Image.asset(
        imagePath,
        width: width,
        height: height,
        fit: BoxFit.cover, 
      ),
    );
  }
}
