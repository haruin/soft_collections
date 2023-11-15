/// This file contains the model for the system notes.
/// This model is used in the system notes page.
/// This model contains the call type, call date, conversation type, call duration, 
/// contact comunication method, and code type.
class SystemnNotes{
  
  String callType;
  DateTime callDate;
  String conversationType;
  String callDuration;
  String contactComunicationMethod;
  String codeType;

  SystemnNotes({
    required this.callType,
    required this.callDate,
    required this.conversationType,
    required this.callDuration,
    required this.contactComunicationMethod,
    required this.codeType,
  });


}