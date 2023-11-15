/// Model class for payment information
/// This model is used in the payment page.
/// This model contains the card number, checking account number, payment method, 
/// expiry date, amount, payment date, entry date, and sent payment method.
class PaymentInformation{

  String cardNumber;
  String checkingAccountNumber;
  String paymentMethod;
  DateTime expiryDate;
  double amount;
  DateTime paymentDate = DateTime.now();
  DateTime entryDate = DateTime.now();
  String sentPaymentMethod;

  PaymentInformation({

    required this.cardNumber,
    required this.checkingAccountNumber,
    required this.expiryDate,
    required this.paymentMethod,
    required this.amount,
    required this.paymentDate,
    required this.entryDate,
    required this.sentPaymentMethod,

  });
}