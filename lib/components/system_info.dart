import 'package:flutter/material.dart';

class SystemInfo extends StatefulWidget {
  const SystemInfo({super.key});

  @override
  State<SystemInfo> createState() => _SystemInfoState();
}

class _SystemInfoState extends State<SystemInfo> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    //child: 
                  ),
                ),
              ],
            ),
          );
  }
}