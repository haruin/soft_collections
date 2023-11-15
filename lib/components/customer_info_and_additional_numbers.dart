import 'package:flutter/material.dart';
import 'package:soft_collections/models/datos_cliente.dart';

class CustomerInfoAndAdditionalNumbers extends StatefulWidget {
  const CustomerInfoAndAdditionalNumbers({super.key, required this.customer1Info});

  final Customerinfo customer1Info;
  
  @override
  State<CustomerInfoAndAdditionalNumbers> createState() => _CustomerInfoAndAdditionalNumbersState();
}

class _CustomerInfoAndAdditionalNumbersState extends State<CustomerInfoAndAdditionalNumbers> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Customer Info
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: myBoxDecoration(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Nombre: ${widget.customer1Info.name}', style: style,),
                          Text('Email: ${widget.customer1Info.email}', style: style,),
                          Text('Telefono: ${widget.customer1Info.phone}', style: style,),
                          Text('Direccion: ${widget.customer1Info.address}', style: style,),
                          Text('SSN: ${widget.customer1Info.ssn}', style: style,),
                          Text('Fecha de Nacimiento: ${widget.customer1Info.dateofbirth}', style: style,),
                        ],
                      ),
                    ),
                  ),
                  // Additional Numbers
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: myBoxDecoration(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text('Numeros Adicionales', style: style,),
                                Text('Valido: ${widget.customer1Info.additionalNumbers.valid}', style: style,),
                                Text('Posible: ${widget.customer1Info.additionalNumbers.possible}', style: style,),
                                Text('No Llamar: ${widget.customer1Info.additionalNumbers.doNotCall}', style: style,),
                                Text('Restricciones de Horario: ${widget.customer1Info.additionalNumbers.hourRestrictions}', style: style,),
                                Text('Restricciones de Dia: ${widget.customer1Info.additionalNumbers.dayRestrictions}', style: style,),
                              ],
                            ),
                      ),
                    ),
                  ),
                  // Account Status
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: myBoxDecoration(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Estado de Cuenta: ${widget.customer1Info.accountStatus ? 'Activo' : 'Inactivo'}', style: style,),
                          Text('Mensajes de Voz: ${widget.customer1Info.leftMessages}', style: style,),
                          Text('Contactos con el cliente: ${widget.customer1Info.lastContact}', style: style,),
                          Text('ID de Cuenta: ${widget.customer1Info.accountID}', style: style,),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
  }

  BoxDecoration myBoxDecoration(){

    return BoxDecoration(
      color: Colors.grey,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
    );
  }

  TextStyle style = TextStyle(
    color: Colors.black,
  );

  TextAlign textAlign = TextAlign.center;

}

