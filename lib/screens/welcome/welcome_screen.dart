import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:sihpp/widgets/status.dart';

import '../../constant/utils.dart';
import '../home_screen.dart';

// enum Status {
//   "saas",
//   "sas",
//   "sdas"
// }
class WelcomeScreen extends StatefulWidget {

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool _rememberMe = false;
  String status = "";
  bool obscureText = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: GestureDetector(
        onTap: ()=> FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Row(
            children: [
              Expanded(
                //flex: 3,
                child: Container(
                  width: screenWidth / 2,
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0,bottom: 12, left: 50, right: 50),
                          child: Container(
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/logo.jpeg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(left: 15, right: 15, bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 5, left: 5),
                                child: Text("User Type *", style: introStyle),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [

                                    radioListStatus(
                                        "Reg: Desk","Reg: Desk"),
                                    radioListStatus("Doctor","Doctor"),
                                    radioListStatus(
                                        "Pharmacist","Pharmacist"),
                                    radioListStatus("LHV","LHV"),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5, bottom: 5, left: 5),
                                child: Text("Enter Your Username",
                                    style: introStyle),
                              ),
                              TextField(
                                controller: emailController,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Enter Your Username",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey)
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Password",
                                      style: introStyle,
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        print("button Clicked");
                                      },
                                      child: Text("Forgot your Password?",
                                          style: introStyle),
                                    ),
                                  ],
                                ),
                              ),
                              TextField(
                                obscureText: obscureText,
                                controller: passwordController,
                                decoration: InputDecoration(
                                  hintText: "Enter Your Password",
                                  border: OutlineInputBorder(),
                                  suffixIcon: GestureDetector(
                                      onTap: (){
                                        setState((){
                                          obscureText = !obscureText;
                                        });
                                      },
                                      child: Icon(obscureText ? Icons.visibility : Icons.visibility_off,
                                        color: obscureText ? Colors.grey : Colors.blue,
                                      ),
                                  ),
                                ),
                              ),
                              CheckboxListTile(
                                controlAffinity: ListTileControlAffinity.leading,
                                value: _rememberMe,
                                onChanged: ((value) {
                                  setState(() {
                                    if (value != null) {
                                      _rememberMe = value;
                                    }
                                  },);
                                }),
                                title: Text("Remember Me", style: introStyle),
                                activeColor: Colors.green,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (_) =>
                                      HomeScreen(status: status, email: emailController.text, pass: passwordController.text,)));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 50,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(8)
                                    ),
                                    child: Center(
                                      child: Text(
                                          "Log In",
                                          style: TextStyle(
                                            fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                //flex: 2,
                child: Container(
                  foregroundDecoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                  ),
                  width: screenWidth / 2,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      //color: Colors.black.withOpacity(0.3),
                    image: DecorationImage(
                      //colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.color),
                      image: AssetImage("assets/images/bg.jpeg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Sindh Electronic \nMedical Record",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenHeight * 0.08,
                                  color: introFontColor,
                              fontFamily: "Nunito"),
                            ),

                            SizedBox(
                              height: screenHeight * 0.1,
                            ),
                            Text("Mission Statement",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenHeight * 0.05,
                                    color: introFontColor,
                                    fontFamily: "Nunito")),
                            SizedBox(
                              height: 12,
                            ),
                            //Spacer(),
                            Center(
                                child: Text(intro,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: screenHeight * 0.04,
                                        color: introFontColor,
                                        fontFamily: "Nunito"))),
                            SizedBox(
                              height: 12,
                            ),
                            Text("- Health Department Government of Sindh",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenHeight * 0.04,
                                    color: introFontColor,
                                    fontFamily: "Nunito")),
                            SizedBox(
                              height: 12,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    }

    //radio Button Custom
  radioStatus (String value, String title){
    return Row(
      children: [
        Radio(
            value: value,
            groupValue: status,
            onChanged: ((String? value){
              if(value != null){
                setState(() {
                  status = value;
                  print(status);
                });
              }
            })),
        Text(title,style: introStyle)
      ],
    );
  }

  //radio List Custom button
  radioListStatus (String value, String title){
    return  Expanded(
      flex: 1,
      child: RadioListTile(
        title: Text(title,style: TextStyle(
            //fontWeight: FontWeight.bold,
            //fontSize: screenHeight * 0.04,
            //color: introFontColor,
            fontFamily: "Nunito")),
            value: value,
            groupValue: status,
            onChanged: ((String? value){
              if(value != null){
                setState(() {
                  status = value;
                  print(status);
                });
              }
            })),
    );
  }

  }

