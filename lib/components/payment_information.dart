import 'package:flutter/material.dart';

class PaymentInformation extends StatefulWidget {
  const PaymentInformation({super.key});

  @override
  State<PaymentInformation> createState() => _PaymentInformationState();
}

class _PaymentInformationState extends State<PaymentInformation> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green,
                    //child: 
                  ),  
                )
                
              ],
            ),
          );
  }
}