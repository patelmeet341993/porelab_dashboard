import 'package:flutter/services.dart';
import 'package:flutter_app/controllers/authentication_controller.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../configs/my_print.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/HomeScreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController? emailController, passwordController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getLogo(),
        getLoginSignup(),
      ],
    );
  }

  Widget getLogo(){
    return Image.asset("assets/logo/M19Logo_31.1.19_White.png",width: 300,height: 100,);  }

  Widget getLoginSignup(){
    return Center(
      child: Neumorphic(
        drawSurfaceAboveChild: false,
        margin: const EdgeInsets.symmetric(horizontal: 300),
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 10),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              getEmailTextField(),
              const SizedBox(
                height: 20,
              ),
              getPasswordTextField(),
              const SizedBox(
                height: 20,
              ),
              getLoginSignupButton(context),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getEmailTextField() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: 4, horizontal: 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.email_outlined,
              color: Colors.blueAccent,
              size: 26,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.blueAccent,
                onChanged: (val){
                  /*if(val.isNotEmpty){
                    setState(() {
                      isLoginFocus=true;
                    });
                  }else{
                    setState(() {
                      isLoginFocus=false;
                    });
                  }*/
                },
                validator: (String? value) {
                  if (value?.trim().isNotEmpty ?? false) {
                    if (RegExp(
                        r"^[a-zA-Z0-9+_.-]+[a-zA-Z0-9+_.-]+@[a-zA-Z0-9][a-zA-Z0-9]+\.[a-zA-Z0-9][a-zA-Z0-9]+")
                        .hasMatch(value!)) {
                      MyPrint.printOnConsole("Valid");
                      return null;
                    } else {
                      return "Invalid Email Address";
                    }
                  } else {
                    return "Email Address Cannot be empty";
                  }
                },
                inputFormatters: [
                  FilteringTextInputFormatter.deny(" "),
                ],
                decoration: const InputDecoration(
                    hintText: 'Email Address',
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                        color: Colors.black26
                    )
                ),
                style: const TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getPasswordTextField() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: 4, horizontal: 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.lock_outline,
              color: Colors.blueAccent,
              size: 26,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: TextFormField(
                controller: passwordController,
                cursorColor: Colors.blueAccent,
                validator: (String? value) {
                  if (value?.trim().isNotEmpty ?? false) {
                    if (value!.length >= 6) {
                      return null;
                    } else {
                      return "Minimum length is 6";
                    }
                  } else {
                    return "Password Cannot be empty";
                  }
                },
                decoration: const InputDecoration(
                    hintText: 'Password',
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                        color: Colors.black26
                    )
                ),
                style: const TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,

                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getForgetPasswordText() {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Forgot Password?',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.blueAccent,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget getLoginSignupButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () async {
            if(formKey.currentState!.validate()){
              AuthenticationController().signInWithEmailAndPassword(context, emailController!.text.trim(), passwordController!.text.trim());
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            decoration: const BoxDecoration(
              //color: isAcceptedTerms ? Styles.red : Styles.red.withOpacity(0.8),
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: 20,),
        InkWell(
          onTap: () async {
            AuthenticationController().signUpWithEmailAndPassword(context, emailController!.text.trim(), passwordController!.text.trim());

          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            decoration: const BoxDecoration(
              //color: isAcceptedTerms ? Styles.red : Styles.red.withOpacity(0.8),
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'SignUp',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

}