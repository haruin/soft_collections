import 'package:flutter/material.dart';

class Customerinfo
{

  String name;
  String? email;
  String phone;
  String address;
  String ssn;
  String dateofbirth;
  AdditionalNumbers additionalNumbers;
  bool accountStatus;
  int leftMessages;
  int lastContact;
  int accountID;


  Customerinfo({

    required this.name,
    this.email,
    required this.phone,
    required this.address,
    required this.ssn,
    required this.dateofbirth,
    required this.additionalNumbers,
    required this.accountStatus,
    required this.leftMessages,
    required this.lastContact,
    required this.accountID,

  });

  // factory Customerinfo.fromJson(Map<String, dynamic> json) => Customerinfo(
    
  // );

  // Map<String, dynamic> toJson() => {
    
  // };

}

class AdditionalNumbers {

  String? valid;
  String? possible;
  String? doNotCall;
  String? hourRestrictions;
  String? dayRestrictions;

  AdditionalNumbers({
    this.valid,
    this.possible,
    this.doNotCall,
    this.hourRestrictions,
    this.dayRestrictions,
  });

  factory AdditionalNumbers.fromJson(Map<String, dynamic> json) => AdditionalNumbers(
    valid: json["valid"],
    possible: json["possible"],
    doNotCall: json["do_not_call"],
    hourRestrictions: json["hour_restrictions"],
    dayRestrictions: json["day_restrictions"],
  );

  Map<String, dynamic> toJson() => {
    "valid": valid,
    "possible": possible,
    "do_not_call": doNotCall,
    "hour_restrictions": hourRestrictions,
    "day_restrictions": dayRestrictions,
  };

}