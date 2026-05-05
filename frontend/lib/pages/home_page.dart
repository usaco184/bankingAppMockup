import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ホーム")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("こんにちは！", style: TextStyle(fontSize: 24)),
            const SizedBox(height: 8),
            Text("アカウント名：${DummyData.accountName}",
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 24),
            const Text("直近の入出金明細", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 8),
            ...DummyData.recentTransactions.map((t) {
              return ListTile(
                title: Text(t["title"]),
                subtitle: Text(t["date"]),
                trailing: Text("${t["amount"]} 円"),
              );
            }).take(3),
          ],
        ),
      ),
    );
  }
}
