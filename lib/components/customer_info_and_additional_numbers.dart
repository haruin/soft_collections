import 'package:flutter/material.dart';

class CustomerInfoAndAdditionalNumbers extends StatefulWidget {
  const CustomerInfoAndAdditionalNumbers({super.key});

  @override
  State<CustomerInfoAndAdditionalNumbers> createState() => _CustomerInfoAndAdditionalNumbersState();
}

class _CustomerInfoAndAdditionalNumbersState extends State<CustomerInfoAndAdditionalNumbers> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    //child: 
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.pink,
                    //child: 
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple,
                    //child: 
                  ),
                ),
              ],
            ),
          );
  }
}