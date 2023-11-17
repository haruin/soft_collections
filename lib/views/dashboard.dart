import 'package:flutter/material.dart';
import 'package:soft_collections/components/customer_info_and_additional_numbers.dart';
import 'package:soft_collections/components/general_info.dart';
import 'package:soft_collections/components/last_act.dart';
import 'package:soft_collections/components/payment_information.dart';
import 'package:soft_collections/components/system_info.dart';
import 'package:soft_collections/models/datos_cliente.dart';
import 'package:soft_collections/models/general_cust_info.dart';
import 'package:soft_collections/models/last_activity.dart';
import 'package:soft_collections/models/payment_info.dart';
import 'package:soft_collections/models/system_notes.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  late Customerinfo customer1Info;
  late AdditionalNumbers additionalNumbers;
  List <PaymentInfo> paymentInfoList = [];

  @override
  void initState() {
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
    ssn: "xxx-xx-6789",
    dateofbirth: "12/11/1999",
    additionalNumbers: additionalNumbers,
    accountStatus: true,
    leftMessages: 5,
    lastContact: 10,
    accountID: 231616512,
  );

   paymentInfoList =  [paymentInfo, paymentInfo2,];

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soft Collection', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                  
                // GeneralInfo
                GeneralInfo(generalCustInformation: customer1,),
                // CustomerInfo and AdditionalNumbers
                CustomerInfoAndAdditionalNumbers(customer1Info: customer1Info,),
                // Payment Information
                PaymentInformation(paymentInfoList: [paymentInfo, paymentInfo2],),
                // System Information
                SystemInfo(systemNotes: call,),
                // Last Activity
                LastActivityComp(lastActivity: lastActivity,),
              ],
            ),
          ),
        ),
      );
  }

  GeneralCustInformation customer1 = GeneralCustInformation(bankName: "Banco del Futuro", deliquencyStatus: "Al corriente", 
  storeName: "Victoria's Secret", accountID: 123456, balance: 9876.54,);

  PaymentInfo paymentInfo = PaymentInfo(
    paymentMethod: "Tarjeta de Debito",
    cardNumber: "xxxxxxxxxxxx6881",
    entryDate: DateTime.now(),
    amount: 1234.56,
    paymentDate: DateTime.now(),
    sentPaymentMethod: "Pago en Tienda",
    checkingAccountNumber: "xxxxxxxx8186",
    expiryDate: DateTime.now(),
    
  );

  PaymentInfo paymentInfo2 = PaymentInfo(
    paymentMethod: "Cuenta de Cheques",
    cardNumber: "xxxxxxxxxxxx6881",
    entryDate: DateTime.now(),
    amount: 3556.56,
    paymentDate: DateTime.now(),
    sentPaymentMethod: "Pago en pagina web",
    checkingAccountNumber: "xxxxxxxx8186",
    expiryDate: DateTime.now(),
    
  );

  SystemNotes call = SystemNotes();

  LastActivity lastActivity = LastActivity(
    refusal: 1,
    promises: 2,
    brokenPromises: 3,
    letterSent: true,
    returnMail: false,
    reageElegible: true,
    hardshipElegible: false,
  );

} 