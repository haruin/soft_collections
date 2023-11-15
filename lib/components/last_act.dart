import 'package:flutter/material.dart';

class LastActivityComp extends StatefulWidget {
  const LastActivityComp({super.key});

  @override
  State<LastActivityComp> createState() => _LastActivityCompState();
}

class _LastActivityCompState extends State<LastActivityComp> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.orange,
                    //child: 
                  ),
                )
              ],
            ),
          );
  }
}