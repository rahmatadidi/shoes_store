// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:online_store/screens/HomeScree.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Menggunakan Future.delayed untuk menavigasi ke halaman utama setelah 3 detik
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const Home(), // Ganti dengan halaman utama Anda
      ));
    });

    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Nama Aplikasi',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
