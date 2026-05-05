import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("マイページ")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("普通預金：${DummyData.savingsBalance} 円",
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 12),
            Text("定期預金：${DummyData.timeDepositBalance} 円",
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              child: const Text("振込をする"),
            ),
          ],
        ),
      ),
    );
  }
}
