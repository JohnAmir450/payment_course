import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/app_styles.dart';

AppBar customAppBar({  final String? title}) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: const Icon(Icons.arrow_back),
      title:  Text(title??'',style: AppStyles.textStyle25,),
      centerTitle: true,
    );
  }
