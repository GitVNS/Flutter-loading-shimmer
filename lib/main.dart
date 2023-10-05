import 'package:flutter/material.dart';
import 'package:linkedin_shimmer/components.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _effect;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 450))
      ..repeat(reverse: true);
    _effect = Tween<double>(begin: 0.2, end: 0.6).animate(_animationController);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: AnimatedBuilder(
        animation: _animationController,
        builder: (context, _) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 5),
                buildTextPostCard(
                    const Color(0xffcce6f4).withOpacity(_effect.value)),
                buildImagePostCard(
                    const Color(0xffcce6f4).withOpacity(_effect.value)),
                buildTextPostCard(
                    const Color(0xffcce6f4).withOpacity(_effect.value)),
              ],
            ),
          );
        },
      ),
    );
  }
}
