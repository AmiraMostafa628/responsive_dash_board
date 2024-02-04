class TransactionsModel{
  final String title,date,amount;
  final bool isWithdrawal;

  const TransactionsModel({required this.title, required this.amount,
    required this.date, required this.isWithdrawal});
}