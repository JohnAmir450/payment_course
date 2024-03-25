import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles{


  static TextStyle textStyle25= GoogleFonts.inter(
   textStyle:const TextStyle(fontSize: 25,fontWeight: FontWeight.w500) 
  ); 

    static TextStyle textStyle18= GoogleFonts.inter(
   textStyle:const TextStyle(fontSize: 18,fontWeight: FontWeight.w400) 
  ); 
    static TextStyle textStyleBold18= GoogleFonts.inter(
   textStyle:const TextStyle(fontSize: 18,fontWeight: FontWeight.w600) 
  ); 

  static TextStyle textStyleRegular20= GoogleFonts.inter(
   textStyle:const TextStyle(fontSize: 20,fontWeight: FontWeight.w400) 
  ); 

    static TextStyle textStyle20= GoogleFonts.inter(
   textStyle:const TextStyle(fontSize: 20,fontWeight: FontWeight.w600) 
  ); 
    static TextStyle textStyle24= GoogleFonts.inter(
   textStyle:const TextStyle(fontSize: 24,fontWeight: FontWeight.w600) 
  ); 
    static TextStyle textStyle22= GoogleFonts.inter(
   textStyle:const TextStyle(fontSize: 22,fontWeight: FontWeight.w500) 
  ); 
}