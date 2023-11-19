import 'package:flutter/material.dart';
import 'package:rockscissorspaper/game/enum.dart';

// 입력할 가위바위보 카드만들기

class InputCard extends StatelessWidget {
  final Widget child;

  const InputCard({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),

      // 테두리
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey, width: 8),
      ),
      child: child,
    );
  }
}