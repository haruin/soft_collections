import 'package:flutter/material.dart';
import 'package:soft_collections/components/customer_info_and_additional_numbers.dart';
import 'package:soft_collections/components/general_info.dart';
import 'package:soft_collections/components/last_act.dart';
import 'package:soft_collections/components/payment_information.dart';
import 'package:soft_collections/components/system_info.dart';
import 'package:soft_collections/models/general_cust_info.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soft Collection'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
        body: Column(
          children: [
              
            // GeneralInfo
            GeneralInfo(generalCustInformation: customer1,),
            // CustomerInfo and AdditionalNumbers
            CustomerInfoAndAdditionalNumbers(),
            // Payment Information
            PaymentInformation(),
            // System Information
            SystemInfo(),
            // Last Activity
            LastActivityComp(),
          ],
        ),
      );
  }

  GeneralCustInformation customer1 = GeneralCustInformation(bankName: "Banco del Futuro", deliquencyStatus: "Al corriente", storeName: "Tienda XYZ", 
  accountID: 123456, balance: 9876.54,);

} 