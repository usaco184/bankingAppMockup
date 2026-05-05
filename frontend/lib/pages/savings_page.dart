import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

class SavingsPage extends StatelessWidget {
  const SavingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("普通預金")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("残高：${DummyData.savingsBalance} 円",
                style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 24),
            const Text("明細（1年分）", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: DummyData.savingsDetails.map((d) {
                  return ListTile(
                    title: Text(d["date"]),
                    trailing: Text("${d["amount"]} 円"),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
