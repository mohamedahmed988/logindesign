




import 'package:flutter/material.dart';
import 'package:pixa/presention/resoursers/assets_manager.dart';
import 'package:pixa/presention/resoursers/color_manager.dart';
import 'package:pixa/presention/resoursers/font_manager.dart';

import 'package:pixa/presention/resoursers/values_manger.dart';



class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);


  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isChecked = false;
  bool value = false;






  @override
  Widget build(BuildContext context) =>Container(


      decoration: const BoxDecoration(

        image: DecorationImage(image:AssetImage(ImageAssets.splashBg2),
          fit: BoxFit.cover,

        ),
      ),

      child:  Scaffold(

          backgroundColor: Colors.transparent,
          body: Container (
            padding: const EdgeInsets.symmetric(
              horizontal: 20,

            ),
            width: MediaQuery.of(context).size.width,

              child: Column(

                children:

                  [
                    const SizedBox(height: 130,),
                    Image.asset(ImageAssets.splashlogo2 ,width: 127,),//height: 131,)
                    SizedBox(height: AppSize.s31,),


                    Text("Welcome Back",
                      style: TextStyle(
                        fontSize:FontSize.s25,
                        fontWeight: FontWeightManger.regular,
                        color:ColorManger.silver,
                        fontFamily: FontConstant.fontFamily,

                      ),



                   ),
                    SizedBox(
                      width: 214,
                      height: 0,
                    ),
                    Text("Log in to existant account of Pixa",
                      style: TextStyle(
                        fontSize:FontSize.s12,

                        color:ColorManger.darkGray,
                        fontFamily: FontConstant.fontFamily,
                        fontWeight: FontWeightManger.Bold,
                      ),


                   ),
                    SizedBox(
                      height: 30,

                    ),
               Container(
                width: double.infinity,
                height: 60,
                margin: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 10),
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white60, width: 1),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(1, 1)),
                    ],

                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(15))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(IconManager.email),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: TextFormField(
                          maxLines: 1,
                          decoration: const InputDecoration(
                            label: Text(" Email "),
                            border: InputBorder.none,

                          ),
                        ),
                      ),
                    ),
                  ],
                )),
                    SizedBox(
                      height: 0,
                    ),
               Container(
                width: double.infinity,
                height: 60,
                margin: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 10),
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white60, width: 1),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(1, 1)),
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(15))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(IconManager.password0),





                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: TextFormField(
                          maxLines: 1,
                          decoration: const InputDecoration(
                            label: Text(" Password "),
                            suffixIcon:Icon(IconManager.show),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
              SizedBox(
                height: 5
                ,
              ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ), //SizedBox

                        SizedBox(width: 10), //SizedBox
                        /** Checkbox Widget **/
                        Checkbox(
                          value: this.value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value!;
                            }

                            );


                          },

                        ),
                        Text(
                          'Remember me               ',
                          style: TextStyle(fontSize: 15.0,color:ColorManger.darkGray,
                            fontFamily: FontConstant.fontFamily,
                            fontWeight: FontWeightManger.regular,
                          ),

                        ),
                        Container(
                          //alignment: Alignment.center,

                          //margin: EdgeInsets.only(right: 40),
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              "                             Forgot Password?",
                              style: TextStyle(
                                  color: ColorManger.green,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),//Text//Checkbox
                      ], //<Widget>[]
                    ),
                    SizedBox(
                      height: 10,
                    ),//Row


                    Container(

                        child: Container(

                          alignment: Alignment.center,
                          width: double.infinity,
                          height: 60,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          decoration: const BoxDecoration(
                            color: Color(0xff2C4495),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: Expanded(
                            child: Container(
                              child: const Text(
                                  "log in",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: FontConstant.fontFamily,
                                    fontWeight: FontWeightManger.regular,
                                  )),
                            ),
                          ),

                        ),

                    ),

                    SizedBox(
                      height: 70,

                    ),

                         Container(
                          child: const Text(
                            "Choose Language",
                             style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontFamily: FontConstant.fontFamily,
                              fontWeight: FontWeightManger.demiBold,
                            )),
                      ),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 10.0, top: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.grey, //Color(0xfff05945),
                                      offset: const Offset(0, 0),
                                      blurRadius: 5.0),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.0)),
                            width:  170,
                            height  :45,
                            child: Material(
                              borderRadius: BorderRadius.circular(12.0),
                              child: InkWell(onTap: () {
                                print("English");
                                },
                                //child: Padding(
                                  //padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      SizedBox(
                                        width: 7.0,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child:

                                        Text("English",style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: FontConstant.fontFamily,
                                          fontWeight: FontWeightManger.regular, ),
                                      )
                                      )
                                    ]
                                      )
                                  ),
                                ),
                              ),
                            ),
                          //),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 30.0, top: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.grey, //Color(0xfff05945),
                                      offset: const Offset(0, 0),
                                      blurRadius: 5.0),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.0)),
                            width:  170,
                            height: 45,
                            child: Material(
                              borderRadius: BorderRadius.circular(12.0),
                              child: InkWell(
                                onTap: () {
                                  print("عربي ");
                                },
                                //child: Padding(
                                  //padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      SizedBox(
                                        width: 7.0,
                                      ),
                                      Text("عربي ",
                                      style: TextStyle(
                                        fontFamily: FontConstant.fontFamily0,
                                      ),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        //),
                      ],
                    ),




          ]
  )
  )
  )
  );









  }


class IconManager {
  static const _kFontFam = 'MyFlutterApp';


  static const IconData email = IconData(0xe802, fontFamily: _kFontFam, );
  static const IconData password0 = IconData(0xe803, fontFamily: _kFontFam, );
  static const IconData bell = IconData(0xe806, fontFamily: _kFontFam, );
  static const IconData add1 = IconData(0xe808, fontFamily: _kFontFam, );
  static const IconData show = IconData(0xe80a, fontFamily: _kFontFam, );

}

//child: SingleChildScrollView(
//scrollDirection: Axis.vertical,