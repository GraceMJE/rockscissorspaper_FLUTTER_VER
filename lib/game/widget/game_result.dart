import 'package:flutter/material.dart';
import 'package:rockscissorspaper/game/enum.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final Result? result;
  final VoidCallback callback;

  const GameResult(
      {required this.isDone, required this.callback, this.result, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      // 게임끝났을 때 & 초기화면
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            result!.displayString,
            style: const TextStyle(fontSize: 32),
          ),
          const SizedBox(height: 8),
          TextButton(
            child: const Text(
              'Play Again',
              style: TextStyle(fontSize: 24),
            ),
            onPressed: () => callback.call(),
          )
        ],
      );
    }

    // 경기가 진행되지 않은 상태 설정
    return const Center(
      child: Text(
        '가위, 바위, 보 중 하나를 선택해주세요.',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
