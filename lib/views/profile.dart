import 'package:button_animations/button_animations.dart';
import 'package:button_animations/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> cargos = ['DEV MOBILE', 'DEV FRONTEND', 'DEV BACKEND'];
    List<String> stack = [
      'FLUTTER',
      'DART',
      'HTML&CSS',
      'JAVA',
      'SQL',
      'KOTLIN',
      'ANGULAR',
    ];
    return NeumorphicApp(
      home: Neumorphic(
        child: Column(
          children: [
            ///////////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 350,
                height: 180,
                child: new Neumorphic(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: CircleAvatar(
                          radius: 45.0,
                          backgroundImage: NetworkImage(
                            'https://media-exp1.licdn.com/dms/image/C4D03AQGp-crxPNVNfg/profile-displayphoto-shrink_200_200/0/1518536005636?e=1622073600&v=beta&t=sA6a9SO1dHGZOQReI0ewheZlG-CP54i91V2IFUqhp7Y',
                          ),
                        ),
                      ),
                      NeumorphicText(
                        "TARCISIO VALENTIM ARAUJO DA SILVA",
                        style: NeumorphicStyle(
                          depth: 4, //customize depth here
                          color: Colors.grey[800], //customize color here
                        ),
                        textStyle: NeumorphicTextStyle(
                          fontSize: 13, //customize size here
                          // AND others usual text style properties (fontFamily, fontWeight, ...)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ///////////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 350,
                height: 180,
                child: new Neumorphic(
                  child: Column(
                    children: [
                      ////////////

                      NeumorphicText(
                        'EXPERIENCIAS: ',
                        style: NeumorphicStyle(
                          depth: 4, //customize depth here
                          color: Colors.black87, //customize color here
                        ),
                        textStyle: NeumorphicTextStyle(
                          fontSize: 18, //customize size here
                          // AND others usual text style properties (fontFamily, fontWeight, ...)
                        ),
                      ),
                      new Expanded(
                        child: new ListView.builder(
                          itemCount: cargos.length,
                          itemBuilder: (BuildContext ctxt, int i) {
                            return new NeumorphicText(
                              cargos[i],
                              style: NeumorphicStyle(
                                depth: 4, //customize depth here
                                color: Colors.grey[500], //customize color here
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ///////////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 350,
                height: 180,
                child: new Neumorphic(
                  child: Column(
                    children: [
                      ////////////

                      NeumorphicText(
                        'STACKS: ',
                        style: NeumorphicStyle(
                          depth: 4, //customize depth here
                          color: Colors.black87, //customize color here
                        ),
                        textStyle: NeumorphicTextStyle(
                          fontSize: 18, //customize size here
                          // AND others usual text style properties (fontFamily, fontWeight, ...)
                        ),
                      ),
                      new Expanded(
                        child: new ListView.builder(
                          itemCount: stack.length,
                          itemBuilder: (BuildContext ctxt, int i) {
                            return new NeumorphicText(
                              stack[i],
                              style: NeumorphicStyle(
                                depth: 4, //customize depth here
                                color: Colors.grey[500], //customize color here
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ////////////////////////////////////////////////////////////
            SizedBox(
              height: 50,
            ),
            ///////////////////////////////////////////////////////////
            Container(
              height: 100,
              width: 350,
              child: Neumorphic(
                drawSurfaceAboveChild: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      //facebook
                      padding: const EdgeInsets.all(2),
                      child: AnimatedButton(
                        child: new Image.network(
                          'https://pcdn.sharethis.com/wp-content/uploads/2017/11/Facebook-share-icon.png',
                          scale: 1.0,
                        ),
                        onTap: () {},
                        type: null,
                        height: 45,
                        width: 45,
                        borderRadius: 22.5,
                        color: Color(0xFF49659F),
                      ),
                    ),
                    Padding(
                      //twiter
                      padding: const EdgeInsets.all(2),
                      child: AnimatedButton(
                        child: new Image.network(
                          'https://image.flaticon.com/icons/png/512/2175/2175203.png',
                          scale: 1.0,
                        ),
                        onTap: () {
                          createElement();
                        },
                        type: PredefinedThemes.primary,
                        height: 45,
                        width: 45,
                        borderRadius: 22.5,
                        color: Color(0xFFd4d4d4),
                      ),
                    ),
                    Padding(
                      //linkedin
                      padding: const EdgeInsets.all(2),
                      child: AnimatedButton(
                        child: new Image.network(
                          'https://pics.freeicons.io/uploads/icons/png/541526511556105711-512.png',
                          scale: 1.0,
                        ),
                        onTap: () {},
                        type: PredefinedThemes.primary,
                        height: 45,
                        width: 45,
                        borderRadius: 22.5,
                        color: Color(0xFFd4d4d4),
                      ),
                    ),
                    Padding(
                      //github
                      padding: const EdgeInsets.all(2),
                      child: AnimatedButton(
                        child: new Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1200px-Octicons-mark-github.svg.png',
                          scale: 1.0,
                        ),
                        onTap: () {},
                        type: null,
                        height: 45,
                        width: 45,
                        borderRadius: 22.5,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      //instagram
                      padding: const EdgeInsets.all(2),
                      child: AnimatedButton(
                        child: new Image.network(
                          'https://possetem.com.br/wp-content/uploads/2019/08/K1gOgV-logo-instagram-cut-out-png.png',
                          scale: 1.0,
                        ),
                        onTap: () {},
                        type: null,
                        height: 45,
                        width: 45,
                        borderRadius: 22.5,
                        color: Color(0xFFB81877),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
