import 'package:flutter/material.dart';

class rowcolumn extends StatelessWidget {
  const rowcolumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:const  Text('Rowcolumn'),),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                        ),
                        const SizedBox(height: 10,),
                      
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                        )
                      ],),
                    ),
                  ),
                  const SizedBox(width: 20,)
                ,Expanded(
                  child: Container(
                    height: 100,
                        width: 100,
                    color: Colors.yellow,),
                )
                ],
              ),
             const Divider(color: Colors.black,
             height: 2,),
              const SizedBox(height: 10,),
              Container(
                height: 100,
                      width: double.infinity,
                color: Colors.blue,),

                const SizedBox(height: 500,),
                
            ],
          ),
        ),
      ),
    );
  }
}
