import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Proses extends StatelessWidget {
  Proses({super.key});

  int selectedIndex = 0; // Keep track of the selected index

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        // Navigate to On Review Page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Proses()),
        );
        break;
      case 1:
        // Navigate to Approved Page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Approved()),
        );
        break;
      case 2:
        // Navigate to Rejected Page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Rejected()),
        );
        break;
    }
    selectedIndex = index; // Update the selected index when an item is tapped
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text("Dalam Proses"),
        backgroundColor: Color(0xFFFC8B03),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 32),
                  child: Image.asset('assets/images/no_data.png', width: 120, height: 120),
                ),
                const Text(
                  'Whoops!\nTidak Ada Permintaan',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16), // Add some space between the image and the new content

                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 16, 16, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // The first container from the provided code
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFC8B03), // Background color
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
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
                                  const Spacer(),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFDE67),
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
                                      'On Review',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF9F7C00),
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
                      ),
                      const SizedBox(height: 16),
                      // The second container from the provided code
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFEC40A), // Background color
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
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
                                  const Spacer(),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFDE67),
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
                                      'On Review',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF9F7C00),
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => _onItemTapped(index, context),
        currentIndex: selectedIndex, // Set the current index
        selectedItemColor: Color(0xFFFC8B03), // Set selected icon color
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Review.png'),
            ),
            label: 'On Review',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Approved.png'),
            ),
            label: 'Approved',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Rejected.png'),
            ),
            label: 'Rejected',
          ),
        ],
      ),
    );
  }
}
// HALAMAN APPROVED
class Approved extends StatelessWidget {
  const Approved({super.key});

    void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        // Navigate to On Review Page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>  Proses()),
        );
        break;
      case 1:
        // Navigate to Approved Page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Approved()),
        );
        break;
      case 2:
        // Navigate to Rejected Page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Rejected()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Diterima"),
        centerTitle: true,
        backgroundColor: Color(0xFFFC8B03),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 32),
                  child: Image.asset('assets/images/no_data.png', width: 120, height: 120),
                ),
                const Text(
                  'Whoops!\nTidak Ada Permintaan',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 16), // Add some space between the image and the new content

                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 16, 16, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // The first container from the provided code
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFC8B03), // Background color
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
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
                                  const Spacer(),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF7FBA85),
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
                                      'Approved',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0C4D12),
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
                      ),
                      const SizedBox(height: 16),
                      // The second container from the provided code
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFEC40A), // Background color
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
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
                                  const Spacer(),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF7FBA85),
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
                                      'Approved',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0C4D12),
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => _onItemTapped(index, context),
        currentIndex: 1, // Set the current index
        selectedItemColor: Color(0xFFFC8B03), // Set selected icon color
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Review.png'),
            ),
            label: 'On Review',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Approved.png'),
            ),
            label: 'Approved',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Rejected.png'),
            ),
            label: 'Rejected',
          ),
        ],
      ),
    );
  }
}

  // HALAMAN REJECTED
  class Rejected extends StatelessWidget {
  const Rejected({super.key});

    void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        // Navigate to On Review Page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>  Proses()),
        );
        break;
      case 1:
        // Navigate to Approved Page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Approved()),
        );
        break;
      case 2:
        // Navigate to Rejected Page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Rejected()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ditolak"),
        centerTitle: true,
        backgroundColor: Color(0xFFFC8B03),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 32),
                  child: Image.asset('assets/images/no_data.png', width: 120, height: 120),
                ),
                const Text(
                  'Whoops!\nTidak Ada Permintaan',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16), // Add some space between the image and the new content

                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 16, 16, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // The first container from the provided code
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFC8B03), // Background color
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
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
                                  const Spacer(),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFB6B6B),
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
                                      'Rejected',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFC91111),
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
                      ),
                      const SizedBox(height: 16),
                      // The second container from the provided code
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFEC40A), // Background color
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
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
                                  const Spacer(),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFB6B6B),
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
                                      'Rejected',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFC91111),
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => _onItemTapped(index, context),
        currentIndex: 2, // Set the current index
        selectedItemColor: Color(0xFFFC8B03), // Set selected icon color
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Review.png'),
            ),
            label: 'On Review',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Approved.png'),
            ),
            label: 'Approved',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Rejected.png'),
            ),
            label: 'Rejected',
          ),
        ],
      ),
    );
  }
}