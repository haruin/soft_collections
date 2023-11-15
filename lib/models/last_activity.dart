/// This class is a model for the last activity of a customer.
/// This model is used in the last activity page.
/// This model contains the refusal, promises, broken promises, letter sent, return mail, reage elegible, and hardship elegible.
/// The refusal is the number of times the customer has refused to pay.
/// The promises is the number of times the customer has promised to pay.
/// The broken promises is the number of times the customer has broken a promise to pay.
/// The letter sent is a boolean that is true if a letter has been sent to the customer.
/// The return mail is a boolean that is true if the customer has returned mail.
/// The reage elegible is a boolean that is true if the customer is elegible for a reage.
/// The hardship elegible is a boolean that is true if the customer is elegible for a hardship.
class LastActivity{

  int refusal;
  int promises;
  int brokenPromises;
  bool letterSent;
  bool returnMail;
  bool reageElegible;
  bool hardshipElegible;

  LastActivity({
    required this.refusal,
    required this.promises,
    required this.brokenPromises,
    required this.letterSent,
    required this.returnMail,
    required this.reageElegible,
    required this.hardshipElegible,
  });


}