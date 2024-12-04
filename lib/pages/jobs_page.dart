import 'package:flutter/material.dart';

class JobsTab extends StatefulWidget {
  @override
  _JobsTabState createState() => _JobsTabState();
}
class _JobsTabState extends State<JobsTab>{
  bool isSavedSelected = true;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("İşlerim",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      isSavedSelected = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: isSavedSelected
                          ? Colors.white
                          : Colors.black
                    ),
                    padding:
                    EdgeInsets.symmetric(vertical: 12,horizontal: 24),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios),
                        Text("Kaydedilenler")
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}