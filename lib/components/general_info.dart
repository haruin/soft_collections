import 'package:flutter/material.dart';
import 'package:soft_collections/models/general_cust_info.dart';

class GeneralInfo extends StatefulWidget {
  const GeneralInfo({super.key, required this.generalCustInformation});

  final GeneralCustInformation generalCustInformation;

  @override
  State<GeneralInfo> createState() => _GeneralInfoState();
}

class _GeneralInfoState extends State<GeneralInfo> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Nombre del Banco: ${widget.generalCustInformation.bankName} ', style: style,),
                    Text('CA: ${widget.generalCustInformation.deliquencyStatus}', style: style,),
                    Text('Tienda: ${widget.generalCustInformation.storeName}', style: style,),
                    Text('Balance: \$${widget.generalCustInformation.balance} ', style: style,),
                  ],
                ),
              ),
            ),
          );
  } 
  TextStyle style = TextStyle(
    color: Colors.black,
  );
  }