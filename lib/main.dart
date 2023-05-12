import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void phoneCall({@required number}) async {
    String url='tel:$number';
    await canLaunchUrl(Uri.parse(url))?launchUrl(Uri.parse(url)):print("cant call");
  }
  void launchWhatsapp({@required number}) async {
    String url='whatsapp://send?phone=$number';
    await canLaunchUrl(Uri.parse(url))?launchUrl(Uri.parse(url)):print("cant open whatsapp");
  }
  void sendMail({@required mail}) async {
    String url='mailto:$mail';
    await canLaunchUrl(Uri.parse(url))?launchUrl(Uri.parse(url)):print("cant open whatsapp");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  phoneCall(number: "+919019857809");
                },
                child: Text('call'),
              ),
              ElevatedButton(
                onPressed: () {
                  launchWhatsapp(number: "+919019857809");
                },
                child: Text('whatsapp'),
              ),
              ElevatedButton(
                onPressed: () {
                  sendMail(mail: "shrsyc@gmail.com");
                },
                child: Text('mail'),
              ),
            ],
          ),

        ),
      ),
    );
  }
}

