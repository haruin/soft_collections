import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:soft_collections/models/system_notes.dart';

class SystemInfo extends StatefulWidget {
  const SystemInfo({super.key, required this.systemNotes});

  final SystemNotes systemNotes;

  @override
  State<SystemInfo> createState() => _SystemInfoState();
}

class _SystemInfoState extends State<SystemInfo> {
  TextEditingController dateController = TextEditingController();
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
                          Center(child: Text('Tipo de Llamada:', style: style,)),
                          Center(child: Text('Conversacion Con:', style: style,)),
                          Center(child: Text('Metodo de Comunicacion:', style: style,)),
                          Center(child: Text('Cantidad:', style: style,)),
                          Center(child: Text('Fecha:', style: style,)),
                          Center(child: Text('Codigo:', style: style,)),
                        ]
                      ),
                      // Dropwdown para seleccionar el tipo de llamada.
                      TableRow(
                        
                          children: [
                            Center(child: 
                            DropdownButton<String>(
                              value: widget.systemNotes.callType,
                              icon: const Icon(Icons.arrow_drop_down, color: Colors.black,),
                              iconSize: 20,
                              elevation: 16,
                              style: const TextStyle(color: Colors.black),
                              underline: Container(
                                height: 2,
                                color: Colors.black,
                              ),
                              dropdownColor: Colors.grey,
                              onChanged: (String? newValue) {
                                setState(() {
                                  widget.systemNotes.callType = newValue!;
                                });
                              },
                              items: <String>['Inbound', 'Outbound', 'Transfer']
                                .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                            ),),
                            // Dropwdown para seleccionar si se habla con el account holder,
                            // un 3rd party, un attorney, etc.
                            Center(child: 
                            DropdownButton<String>(
                              value: widget.systemNotes.conversationWith,
                              icon: const Icon(Icons.arrow_drop_down, color: Colors.black,),
                              iconSize: 20,
                              elevation: 16,
                              style: const TextStyle(color: Colors.black),
                              underline: Container(
                                height: 2,
                                color: Colors.black,
                              ),
                              dropdownColor: Colors.grey,
                              onChanged: (String? newValue) {
                                setState(() {
                                  widget.systemNotes.conversationWith = newValue!;
                                });
                              },
                              items: <String>['Dueño de la Cuenta', 'Tercera persona', 'Abogado', 'Otro']
                                .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                            ),),
                            // Dropwdown para seleccionar si se le marcó a través
                            // de su celular, casa, trabajo, etc.
                            Center(child: 
                            DropdownButton<String>(
                              value: widget.systemNotes.contactComunicationMethod,
                              icon: const Icon(Icons.arrow_drop_down, color: Colors.black,),
                              iconSize: 20,
                              elevation: 16,
                              style: const TextStyle(color: Colors.black),
                              underline: Container(
                                height: 2,
                                color: Colors.black,
                              ),
                              dropdownColor: Colors.grey,
                              onChanged: (String? newValue) {
                                setState(() {
                                  widget.systemNotes.contactComunicationMethod = newValue!;
                                });
                              },
                              items: <String>['Móvil', 'Casa', 'Trabajo', 'Otro']
                                .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                            ),),
                            // Center para agregar la cantidad que el cliente
                            // mencionó que va a pagar.
                            Center(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.1,
                               
                                child: TextField(
                                  style: const TextStyle(color: Colors.black),
                                  decoration: const InputDecoration(
                                    hintText: '0.00',
                                    hintStyle: TextStyle(color: Colors.black),
                                    prefix: Text('\$', style: TextStyle(color: Colors.black),),
                                    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                    labelText: '',
                                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 2)),
                                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 2)),
                                  ),
                                  keyboardType: TextInputType.number,
                                  cursorColor: Colors.black,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                  ],
                                  onChanged: (value) {
                                    widget.systemNotes.amount = double.parse(value);
                                  },
                                ),
                              ),
                            ),
                            // Center para agregar la fecha en la que se hizo la llamada o
                            // se recibió la llamada, además si se agendó una promesa de pago.
                            Center(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.12,
                                
                                child: TextField(
                                  readOnly: true,
                                  controller: dateController,
                                  style: const TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    hintText: DateFormat('dd/MM/yyyy').format(DateTime.now()),
                                    hintStyle: const TextStyle(color: Colors.black),
                                    prefix: const Text('📅', style: TextStyle(color: Colors.black),),
                                    border: InputBorder.none,
                                    labelText: '',
                                    enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 2,)),
                                    focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 2)),
                                  ),
                                  onTap: () async {
                                    DateTime? date = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2010),
                                      lastDate: DateTime(2030),
                                    );
                                    if (date != null) {
                                      setState(() {
                                        widget.systemNotes.callDate = date;
                                        dateController.text = DateFormat('dd/MM/yyyy').format(date);
                                      });
                                    }
                                  }
                                ),
                              ),
                            ),
                            // Center para agregar el codigo que se le asignó a la llamada.
                            Center(child: 
                            DropdownButton<String>(
                              value: widget.systemNotes.codeType,
                              icon: const Icon(Icons.arrow_drop_down, color: Colors.black,),
                              iconSize: 20,
                              elevation: 16,
                              style: const TextStyle(color: Colors.black),
                              underline: Container(
                                height: 2,
                                color: Colors.black,
                              ),
                              dropdownColor: Colors.grey,
                              onChanged: (String? newValue) {
                                setState(() {
                                  widget.systemNotes.codeType = newValue!;
                                });
                              },
                              // Los siguientes códigos significan lo siguiente:
                              // REF: Rehusa pagar.
                              // PAS: Pasará a la tienda (store).
                              // WEB: Pago en página web.
                              // CBPBP: Marcará de regreso para pagar al número que se le proporcionó.
                              // APP: Pago en la aplicación de la tienda.
                              items: <String>['REF', 'PAS', 'WEB', 'CBPBP', 'APP']
                                .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                            ),),
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