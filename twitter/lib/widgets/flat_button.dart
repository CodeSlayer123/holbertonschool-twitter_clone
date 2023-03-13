import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';


class CustomFlatButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  const CustomFlatButton ({
    Key? key, required this.label,
    required this.onPressed,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top:15, bottom: 15,),
      child: TextButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
          padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.all(25)),

          ),
          
        
        onPressed: () => onPressed(),
        child: Text(
          label,
          style: const TextStyle(
            //fontFamily: GoogleFonts.mulish().fontFamily,
            fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
        )
      ),
    );
  }
}