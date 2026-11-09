import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedValue = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('DropDown')),
       backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 100,
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: DropdownButton<String>(
                dropdownColor: Colors.grey.shade200,
                isExpanded: true,
                value: selectedValue,
                icon: const Icon(Icons.arrow_circle_down_rounded),

                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },

                items: <String>['orange', 'apple', 'banana', 'Grapes']
                    .map<DropdownMenuItem<String>>((String fruit) {
                  return DropdownMenuItem<String>(
                    value: fruit,
                    child: Text(fruit),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
