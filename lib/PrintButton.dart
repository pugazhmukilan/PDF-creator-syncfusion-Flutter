//import 'package:file_download/widgets/printablepage.dart';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

import 'mobile.dart';
final Map<String, String> data = {
  'Name': 'John Doe',
  'Age': '30',
  'Email': 'john.doe@example.com',
  'Address': '123 Main St, Cityville',
  'Occupation': 'Engineer',
  'Phone': '+1 (555) 123-4567',
  'City': 'Cityville',
  'Country': 'USA',
  'Education': 'Bachelor\'s Degree',
  'Hobbies': 'Reading, Traveling',
};

class PrintButton extends StatelessWidget {
  const PrintButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //call the printable function
        //printDoc();
        _createPDF();
        
      },
      
      child: Container(
        decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.transparent,border: Border.all()),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("print as PDF ",style: TextStyle(color: Colors.black45)),
        ),)
      
    );
  }



  // Future<void> printDoc() async {
    
  //   final doc = pw.Document();
  //   doc.addPage(pw.Page(
  //       pageFormat: PdfPageFormat.a4,
  //       build: (pw.Context context) {
  //         return buildPrintableData();
  //       }));
  //   await Printing.layoutPdf(
  //       onLayout: (PdfPageFormat format) async => doc.save());
  // }
  Future<void> _createPDF() async{
    PdfDocument document = PdfDocument();
    final page = document.pages.add();
    final page2 = document.pages.add();


  //  page.graphics.drawString("Welcome to PDF converter",PdfStandardFont(PdfFontFamily.helvetica,40));
  //  page.graphics.drawString(
    
  //   "hello to PDF converter",PdfStandardFont(PdfFontFamily.helvetica,40),bounds: Rect.fromLTRB(200, 200, 10, 10));
    

    List<int> bytes  =await document.save();
    document.dispose();

    saveAndLaunch(bytes , 'Output.pdf');
  }


}

