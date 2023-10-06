import 'package:flutter/material.dart';
import 'Home.dart';

class FormKendaraan extends StatelessWidget {
  const FormKendaraan({super.key});

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Kendaraan"),
      centerTitle: true,
      backgroundColor: Color(0xFFFC8B03),
    ),
    body: Center(
      child: Container(
        width: 100, // Set the width of the button
        child: ElevatedButton(
          onPressed: () {
            showDialog(context);
          },
          child: const Text('Send'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFEE8B0)), // Button color
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9.0),
                side: BorderSide(color: Color(0xFFFFD192)), // Outline color
              ),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFAD39)), // Text color
          ),
        ),
      ),
    ),
  );
}

void showDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    transitionDuration: const Duration(milliseconds: 500),
    barrierLabel: MaterialLocalizations.of(context).dialogLabel,
    barrierColor: Colors.black.withOpacity(0.5),
    pageBuilder: (context, _, __) {
      return Builder(
        builder: (BuildContext dialogContext) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 150),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset(
                            'assets/images/success_popup.png',
                            width: 150,
                            height: 150,
                          ),
                        ),
                        const Text(
                          'Dokumen telah terkirim',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(dialogContext).pop(); // Close the dialog using dialogContext
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home(username: 'Lintang', password: '123')),
                              );
                            },
                            icon: Icon(Icons.cancel_outlined),
                            color: Colors.black,
                            iconSize: 32,
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: CurvedAnimation(
          parent: animation,
          curve: Curves.easeOut,
        ).drive(Tween<Offset>(
          begin: const Offset(0, -1.0),
          end: Offset.zero,
        )),
        child: child,
      );
    },
  );
}
}

class FormRumah extends StatelessWidget {
  const FormRumah({super.key});

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Rumah Tinggal"),
      centerTitle: true,
      backgroundColor: Color(0xFFFC8B03),
    ),
    body: Center(
      child: Container(
        width: 100, // Set the width of the button
        child: ElevatedButton(
          onPressed: () {
            showDialog(context);
          },
          child: const Text('Send'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFEE8B0)), // Button color
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9.0),
                side: BorderSide(color: Color(0xFFFFD192)), // Outline color
              ),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFAD39)), // Text color
          ),
        ),
      ),
    ),
  );
}

void showDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    transitionDuration: const Duration(milliseconds: 500),
    barrierLabel: MaterialLocalizations.of(context).dialogLabel,
    barrierColor: Colors.black.withOpacity(0.5),
    pageBuilder: (context, _, __) {
      return Builder(
        builder: (BuildContext dialogContext) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 150),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset(
                            'assets/images/success_popup.png',
                            width: 150,
                            height: 150,
                          ),
                        ),
                        const Text(
                          'Dokumen telah terkirim',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(dialogContext).pop(); // Close the dialog using dialogContext
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home(username: 'Lintang', password: '123')),
                              );
                            },
                            icon: Icon(Icons.cancel_outlined),
                            color: Colors.black,
                            iconSize: 32,
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: CurvedAnimation(
          parent: animation,
          curve: Curves.easeOut,
        ).drive(Tween<Offset>(
          begin: const Offset(0, -1.0),
          end: Offset.zero,
        )),
        child: child,
      );
    },
  );
}
}