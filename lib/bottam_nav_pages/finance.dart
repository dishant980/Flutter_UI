import 'package:flutter/material.dart';
import 'package:foxtradeappnew/bottam_nav_pages/bottamnavbar.dart';


class Finance extends StatefulWidget {
  const Finance({super.key});

  @override
  State<Finance> createState() => _FinanceState();
}

class _FinanceState extends State<Finance> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () {
            Navigator.pop(context);
          },
          ),
        ),
        
                      bottomNavigationBar: const BottamBar(),

      ),
    );
  }
}