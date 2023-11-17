class SystemNotes{
  
  String? callType; // Inbound or Outbound
  DateTime? callDate;
  String? conversationWith; // Account Holder, Authorized User, Third Party
  double? amount;
  String? contactComunicationMethod; // Work Phone, Cell Phone, Home Phone
  String? codeType;

  SystemNotes({
    this.callType,
    this.callDate,
    this.conversationWith,
    this.amount,
    this.contactComunicationMethod,
    this.codeType,
  });

}