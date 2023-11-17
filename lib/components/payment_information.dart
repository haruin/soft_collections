import 'package:flutter/material.dart';
import 'package:soft_collections/models/payment_info.dart';
import 'package:intl/intl.dart';

class PaymentInformation extends StatefulWidget {
  const PaymentInformation({super.key, required this.paymentInfoList});

  final List<PaymentInfo> paymentInfoList;

  @override
  State<PaymentInformation> createState() => _PaymentInformationState();
}

class _PaymentInformationState extends State<PaymentInformation> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 30.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  // Creacion de tabla sin bordes para mejor estetica.
                  child: Table(
                    
                    //border: TableBorder.all(color: Colors.black),
                    children: [
                      TableRow(
                        
                        // Center para darle un poco mas de estetica a la tabla, tanto en los
                        // titulos como en los datos.
                        children: [
                          Center(child: Text('Metodo de Pago:', style: style,)),
                          Center(child: Text('Numero de cuenta:', style: style,)),
                          Center(child: Text('Cantidad pagada:', style: style,)),
                          Center(child: Text('Fecha de pago:', style: style,)),
                          Center(child: Text('Fecha de realizacion de pago:', style: style,)),
                          Center(child: Text('Medio de pago:', style: style,)),
                        ]
                      ),
                      for (var i = 0; i < widget.paymentInfoList.length; i++) 
                        TableRow(
                          children: [
                            Center(child: Text(widget.paymentInfoList[i].paymentMethod, style: style,)),
                            Center(child: Text(widget.paymentInfoList[i].checkingAccountNumber, style: style,)),
                            Center(child: Text('${widget.paymentInfoList[i].amount}', style: style,)),
                            Center(child: Text(DateFormat('dd/MM/yy').format(widget.paymentInfoList[i].paymentDate), style: style,)),
                            Center(child: Text(DateFormat('dd/MM/yy').format(widget.paymentInfoList[i].entryDate), style: style,)),
                            Center(child: Text(widget.paymentInfoList[i].sentPaymentMethod, style: style,)),
                          ]
                        ),
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