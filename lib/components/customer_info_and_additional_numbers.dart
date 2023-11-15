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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    decoration: myBoxDecoration(),
                    child: Column(
                      children: [
                        Text('Nombre: ${widget.customer1Info.name}'),
                        Text('Email: ${widget.customer1Info.email}'),
                        Text('Telefono: ${widget.customer1Info.phone}'),
                        Text('Direccion: ${widget.customer1Info.address}'),
                        Text('SSN: ${widget.customer1Info.ssn}'),
                        Text('Fecha de Nacimiento: ${widget.customer1Info.dateofbirth}'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      decoration: myBoxDecoration(),
                      child: Column(
                            children: [
                              Text('Numeros Adicionales'),
                              Text('Valido: ${widget.customer1Info.additionalNumbers.valid}'),
                              Text('Posible: ${widget.customer1Info.additionalNumbers.possible}'),
                              Text('No Llamar: ${widget.customer1Info.additionalNumbers.doNotCall}'),
                              Text('Restricciones de Horario: ${widget.customer1Info.additionalNumbers.hourRestrictions}'),
                              Text('Restricciones de Dia: ${widget.customer1Info.additionalNumbers.dayRestrictions}'),
                            ],
                          ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: myBoxDecoration(),
                    child: Column(
                      children: [
                        Text('Estado de Cuenta: ${widget.customer1Info.accountStatus ? 'Activo' : 'Inactivo'}'),
                        Text('Mensajes de Voz: ${widget.customer1Info.leftMessages}'),
                        Text('Contactos con el cliente: ${widget.customer1Info.lastContact}'),
                        Text('ID de Cuenta: ${widget.customer1Info.accountID}'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }

  BoxDecoration myBoxDecoration(){

    return BoxDecoration(
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }

}

