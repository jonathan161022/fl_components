import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            // https://fotografias.larazon.es/clipping/cmsimages02/2019/10/24/FB42E2B6-71E5-423D-995B-857A2530F9AD/98.jpg?crop=2000,1125,x0,y24&width=1900&height=1069&optimize=low&format=webply
            height: 10,
          ),
          CustomCardType2(
            name: 'Mis Amigos',
            imgURL:
                'https://lumiere-a.akamaihd.net/v1/images/eu_dp_toy-story-3_c169_r_063ea214.jpeg?region=0,0,1460,824',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imgURL:
                'https://images.ecestaticos.com/E49k-X0PVGC4fyLkaCGAEeW2Dvs=/0x0:1596x896/1600x900/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F942%2F0d7%2F02b%2F9420d702bc8a2595d0c4d427426bc27a.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imgURL:
                'https://play-lh.googleusercontent.com/proxy/yUN1bb-QNudQPDsWHaVkw7NZEcPu6tx87xFBhjfwJSi84HAwPQaG3wfEK4562BSAPEG1NdL6f94fg_HkZEmFVoLOoT-EDhq9tZPBmNkGz87sM_oVxg=s1920-w1920-h1080',
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
