import 'package:flutter/material.dart';
import 'package:solar/principal_page.dart';
import 'package:url_launcher/url_launcher.dart';

class urllancador extends PrincipalPage {
  const urllancador({Key? key}) : super(key: key);
}

launchURL() async {
  const url = 'https://www.mediainfinity.com.br';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
