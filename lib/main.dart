import 'package:flutter/material.dart';

import 'config/app_config.dart';
import 'providers/app_provider.dart';
import 'screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfig.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppProviderWrapper(
      child: MaterialApp(
        title: 'Profil Mahasiswa & Catatan Kuliah',
        debugShowCheckedModeBanner: false,
        // Mengatur tema dengan warna ungu yang persis seperti gambar referensi
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFFD32F2F), // Merah Crimson Tegas
            primary: const Color(0xFFB71C1C), // Merah Gelap Utama
            secondary: const Color(0xFFFFA000), // Aksen Emas / Amber Maskulin
            surface: const Color(0xFF1E1E24), // Permukaan kartu gelap
            onSurface: Colors.white, // Teks putih tajam di atas latar gelap
            brightness: Brightness.dark,
          ),
          scaffoldBackgroundColor: const Color(
            0xFF121215,
          ), // Hitam Obsidian (Deep Dark)
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Color(0xFF18181D), // Header hitam karbon
            foregroundColor: Colors.white, // Judul & ikon profil putih terang
            elevation: 4,
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color(0xFFD32F2F), // Tombol + Merah Sangar
            foregroundColor: Colors.white,
          ),
          cardTheme: CardThemeData(
            color: const Color(0xFF1E1E24),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(
                color: Color(0xFF33333D), // Garis tepi abu-abu baja
                width: 1,
              ),
            ),
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
