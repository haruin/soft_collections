import 'package:flutter/material.dart';
import 'package:soft_collections/models/last_activity.dart';

class LastActivityComp extends StatefulWidget {
  const LastActivityComp({super.key, required this.lastActivity});

  final LastActivity lastActivity;

  @override
  State<LastActivityComp> createState() => _LastActivityCompState();
}

class _LastActivityCompState extends State<LastActivityComp> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
           flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        Text('Rehuso de pago:', style: style,),
                        Text('Promesas:', style: style,),
                        Text('Promesas rotas: ', style: style,),
                         Text('Cartas mandadas: ', style: style,),
                        Text('Estados de cuenta retornados:  ', style: style,),
                        Text('Elegible para arreglo de pago:  ', style: style,),
                         Text('Elegible para Hardship:  ', style: style,),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text('${widget.lastActivity.refusal} ', style: style,),
                        Text('${widget.lastActivity.promises}', style: style,),
                        Text('${widget.lastActivity.brokenPromises}', style: style,),
                        Text('${widget.lastActivity.letterSent ? 'Si' : 'No'} ', style: style,),
                        Text('${widget.lastActivity.returnMail ? 'Si' : 'No'} ', style: style,),
                        Text('${widget.lastActivity.reageElegible ? 'Si' : 'No'} ', style: style,),
                        Text('${widget.lastActivity.hardshipElegible ? 'Si' : 'No'} ', style: style,),
                      ],
                    ),
                   
                  ],
                )
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Text('Rehuso de pago: ${widget.lastActivity.refusal} ', style: style,),
                //     Text('Promesas: ${widget.lastActivity.promises}', style: style,),
                //     Text('Promesas rotas: ${widget.lastActivity.brokenPromises}', style: style,),
                //     Text('Cartas mandadas: ${widget.lastActivity.letterSent} ', style: style,),
                //     Text('Estados de cuenta retornados: ${widget.lastActivity.returnMail} ', style: style,),
                //     Text('Elegible para arreglo de pago: ${widget.lastActivity.reageElegible} ', style: style,),
                //     Text('Elegible para Hardship: ${widget.lastActivity.hardshipElegible} ', style: style,),
                //     //NOTA: Hardship es un programa de ayuda para clientes que estan pasando por una situacion dificil,
                //     //      como por ejemplo, perdida de empleo, enfermedad, etc.
                //   ],
                // ),
              ),
            ),
          );
      } 
TextStyle style = TextStyle(
    color: Colors.black,
  );
}