/// This file contains the model for the general customer information that is displayed on the home page.
/// This information includes the bank name, deliquency status, store name, and account ID.
/// This model is used in the home page.
class GeneralCustInformation{
  
  String bankName;
  String deliquencyStatus;
  String storeName;
  int accountID;

  GeneralCustInformation({
    required this.bankName,
    required this.deliquencyStatus,
    required this.storeName,
    required this.accountID,
  });

}