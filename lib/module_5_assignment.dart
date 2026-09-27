import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      home: const MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  static const Color _amber = Color(0xFFFFC107);
  static const Color _lavenderBg = Color(0xFFF6F1FA);
  static const Color _circleColor = Color(0xFFD8CCF0);
  static const Color _darkPurple = Color(0xFF1B0A3D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _lavenderBg,
      appBar: AppBar(
        backgroundColor: _amber,
        elevation: 0,
        titleSpacing: 20,
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.black87),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black87),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.phone, color: Colors.black87),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const _ProfileItem(
                  icon: Icons.icecream_outlined,
                  label: 'Ice cream is very delicious right?',
                  circleColor: _circleColor,
                  iconColor: _darkPurple,
                ),
                const SizedBox(height: 48),
                const _ProfileItem(
                  icon: Icons.code,
                  label: 'Programming is not boring if you love it',
                  circleColor: _circleColor,
                  iconColor: _darkPurple,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ProfileItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color circleColor;
  final Color iconColor;

  const _ProfileItem({
    required this.icon,
    required this.label,
    required this.circleColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: circleColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            size: 64,
            color: iconColor,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}