class DummyData {
  static const String accountName = "由紀子の口座";

  static const List<Map<String, dynamic>> recentTransactions = [
    {"date": "2026-05-01", "title": "コンビニ", "amount": -1200},
    {"date": "2026-04-30", "title": "給与振込", "amount": 250000},
    {"date": "2026-04-28", "title": "スーパー", "amount": -5400},
  ];

  static const List<Map<String, dynamic>> savingsDetails = [
    {"date": "2026-05-01", "amount": 300000},
    {"date": "2026-04-01", "amount": 280000},
    {"date": "2026-03-01", "amount": 260000},
  ];

  static const List<Map<String, dynamic>> withdrawalReport = [
    {"type": "クレジットカード", "date": "2026-04-25", "amount": -15000},
    {"type": "口座振替", "date": "2026-04-20", "amount": -8200},
  ];

  static const int savingsBalance = 300000;
  static const int timeDepositBalance = 500000;
}
