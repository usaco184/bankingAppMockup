import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

class WithdrawalReportPage extends StatelessWidget {
  const WithdrawalReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("出金レポート")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: DummyData.withdrawalReport.map((w) {
          return Card(
            child: ListTile(
              title: Text(w["type"]),
              subtitle: Text(w["date"]),
              trailing: Text("${w["amount"]} 円"),
            ),
          );
        }).toList(),
      ),
    );
  }
}
