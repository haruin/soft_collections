import 'package:flutter/material.dart';
import 'package:soft_collections/components/customer_info_and_additional_numbers.dart';
import 'package:soft_collections/components/general_info.dart';
import 'package:soft_collections/components/last_act.dart';
import 'package:soft_collections/components/payment_information.dart';
import 'package:soft_collections/components/system_info.dart';
import 'package:soft_collections/models/datos_cliente.dart';
import 'package:soft_collections/models/general_cust_info.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  late Customerinfo customer1Info;
  late AdditionalNumbers additionalNumbers;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    additionalNumbers = AdditionalNumbers(
    valid: "123-456-7890",
    possible: "123-456-7890",
    doNotCall: "123-456-7890",
    hourRestrictions: "9am-5pm",
    dayRestrictions: "J, V y D",
  );
    
    customer1Info = Customerinfo(
    name: "Jose Sanchez",
    email: "maquina_de_fuego@example.com",
    phone: "123-456-7890",
    address: "123 Calle Principal, Ciudad ABC",
    ssn: "123-45-6789",
    dateofbirth: "01/01/1980",
    additionalNumbers: additionalNumbers,
    accountStatus: true,
    leftMessages: 5,
    lastContact: 10,
    accountID: 231616512,
  );

  }

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
            CustomerInfoAndAdditionalNumbers(customer1Info: customer1Info,),
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