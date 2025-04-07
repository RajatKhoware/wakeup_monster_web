import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import 'package:wakeup_web/features/home/screens/home_screen.dart';
import 'package:wakeup_web/my%20web/my_web.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ToastificationWrapper(
//       child: MaterialApp(
//         title: 'Wakeup Monster',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: MyWeb(),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Two-Way Smooth Scrolling Text')),
        body: Column(
          children: const [
            ScrollingText2(
              isRight: true,
              direction: AxisDirection.right, // Scroll to the right
              backgroundColor:
                  Colors.yellow, // Background color for first strip
            ),
            ScrollingText(
              isRight: false,
              direction: AxisDirection.left, // Scroll to the left
              backgroundColor:
                  Colors.green, // Background color for second strip
            ),
          ],
        ),
      ),
    );
  }
}

class ScrollingText2 extends StatefulWidget {
  final bool isRight;
  final AxisDirection direction;
  final Color backgroundColor;
  const ScrollingText2(
      {super.key,
      required this.direction,
      required this.backgroundColor,
      required this.isRight});
  @override
  State<ScrollingText2> createState() => _ScrollingText2State();
}

class _ScrollingText2State extends State<ScrollingText2> {
  final ScrollController _scrollController = ScrollController();
  late Timer _timer;
  bool _isHovered = false; // Shared hover state
  late double step; // Scroll step for smooth movement
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      step = -2.0;
      //print(step);
      _startScrolling();
    });
  }

  void _startScrolling() {
    const duration =
        Duration(milliseconds: 16); // 60 FPS animation (16ms/frame)
    _timer = Timer.periodic(duration, (_) {
      if (_scrollController.hasClients) {
        final maxScrollExtent = _scrollController.position.maxScrollExtent;
        final minScrollExtent = _scrollController.position.minScrollExtent;
        final offset = _scrollController.offset + step;
        if (offset >= maxScrollExtent) {
          // Reset to the start seamlessly
          _scrollController.jumpTo(minScrollExtent);
        } else if (offset <= minScrollExtent) {
          // Reset to the end seamlessly
          _scrollController.jumpTo(maxScrollExtent);
        } else {
          _scrollController.jumpTo(offset);
        }
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: widget.backgroundColor, // Set the background color for each strip
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            _isHovered = true;
          });
        },
        onExit: (_) {
          setState(() {
            _isHovered = false;
          });
        },
        child: ListView(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          reverse: widget.direction ==
              AxisDirection.left, // Reverse direction for left scrolling
          children: [
            _buildScrollingContent(),
            _buildScrollingContent(), // Duplicate for seamless looping
          ],
        ),
      ),
    );
  }

  Widget _buildScrollingContent() {
    final List<String> texts = [
      '360 Product Spins * Invisible Mannequins * Stop Motion *',
      'Flat Lay * Augmented Reality * Still Life *',
      '3D-AR * Invisible Mannequins * Still Life *',
    ];
    return Row(
      children: texts.map((text) => _buildHoverText(text)).toList(),
    );
  }

  Widget _buildHoverText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          foreground: _isHovered
              ? (Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 0.5
                ..color = Colors.black) // Border on hover
              : null, // Normal text style
          color: _isHovered ? null : Colors.black, // Ensure no conflict
        ),
      ),
    );
  }
}

class ScrollingText extends StatefulWidget {
  final bool isRight;
  final AxisDirection direction;
  final Color backgroundColor;
  const ScrollingText(
      {super.key,
      required this.direction,
      required this.backgroundColor,
      required this.isRight});
  @override
  State<ScrollingText> createState() => _ScrollingTextState();
}

class _ScrollingTextState extends State<ScrollingText> {
  final ScrollController _scrollController = ScrollController();
  late Timer _timer;
  bool _isHovered = false; // Shared hover state
  late double step; // Scroll step for smooth movement
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      print("---------------");
      print(widget.isRight);
      step = widget.isRight ? 2.0 : -2.0;
      //print(step);
      _startScrolling();
    });
  }

  void _startScrolling() {
    const duration =
        Duration(milliseconds: 16); // 60 FPS animation (16ms/frame)
    _timer = Timer.periodic(duration, (_) {
      if (_scrollController.hasClients) {
        final maxScrollExtent = _scrollController.position.maxScrollExtent;
        final minScrollExtent = _scrollController.position.minScrollExtent;
        final offset = _scrollController.offset + step;
        if (offset >= maxScrollExtent) {
          // Reset to the start seamlessly
          _scrollController.jumpTo(minScrollExtent);
        } else if (offset <= minScrollExtent) {
          // Reset to the end seamlessly
          _scrollController.jumpTo(maxScrollExtent);
        } else {
          _scrollController.jumpTo(offset);
        }
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: widget.backgroundColor, // Set the background color for each strip
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            _isHovered = true;
          });
        },
        onExit: (_) {
          setState(() {
            _isHovered = false;
          });
        },
        child: ListView(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          reverse: widget.direction ==
              AxisDirection.left, // Reverse direction for left scrolling
          children: [
            _buildScrollingContent(),
            _buildScrollingContent(), // Duplicate for seamless looping
          ],
        ),
      ),
    );
  }

  Widget _buildScrollingContent() {
    final List<String> texts = [
      '360 Product Spins * Invisible Mannequins * Stop Motion *',
      'Flat Lay * Augmented Reality * Still Life *',
      '3D-AR * Invisible Mannequins * Still Life *',
    ];
    return Row(
      children: texts.map((text) => _buildHoverText(text)).toList(),
    );
  }

  Widget _buildHoverText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          foreground: _isHovered
              ? (Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 0.5
                ..color = Colors.black) // Border on hover
              : null, // Normal text style
          color: _isHovered ? null : Colors.black, // Ensure no conflict
        ),
      ),
    );
  }
}
