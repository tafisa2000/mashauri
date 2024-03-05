import 'package:flutter/material.dart';
import 'package:mashauri/card.dart';
import 'package:mashauri/constant.dart';
import 'package:mashauri/transaction_history.dart';

class FlipAnimationContainer extends StatefulWidget {
  const FlipAnimationContainer({super.key});

  @override
  _FlipAnimationContainerState createState() => _FlipAnimationContainerState();
}

class _FlipAnimationContainerState extends State<FlipAnimationContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isFlipped = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  void _toggleFlip() {
    if (_isFlipped) {
      _controller.reverse();
    } else {
      _controller.forward();
    }

    _isFlipped = !_isFlipped;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleFlip,
      child: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            final transformation = Matrix4.identity()
              ..setEntry(3, 2, 0.002) // Perspective
              ..rotateY(_animation.value * 3.141592); // Y-axis rotation

            return Transform(
              alignment: FractionalOffset.center,
              transform: transformation,
              child: _isFlipped
                  ? Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(3.13), // Flip horizontally
                      child: const TransactionHistory(),
                    )
                  : CreditCard(
                      url: 'assets/images/mastertcard.png',
                      name: 'RUBEN MASHAURI',
                      decoration: kMasterCardDecoration,
                      image: masterCardlogo,
                    ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
