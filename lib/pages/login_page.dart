import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = new TextEditingController(text: "email@email.com");
  TextEditingController senhaController = new TextEditingController(text: "");
  bool isObscureText = true;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 23, 24, 24),
        body: 
        SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
          
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      Expanded(
                        flex: 5,
                        child: Image.network(
                          "https://hermes.digitalinnovation.one/assets/diome/logo.png",
                          ),
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text("Ja tem cadastro?",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white),),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Faça seu login and make the change_",
                  style: TextStyle(fontSize: 14, color: Colors.white),),
                   const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 30,
                    alignment: Alignment.center,
                    child: TextField(
                      controller: emailController,
                      onChanged: (value){
                        debugPrint(value);
                      },
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(contentPadding: EdgeInsets.only(top: 0),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
                        hintText: "E-mail",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.mail, color: Colors.purple,)),
                    ),
                  ),
        
                  const SizedBox(
                    height: 15,
                  ),
        
        
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 30,
                    alignment: Alignment.center,
                    child: TextField(
                      controller: senhaController,
                      obscureText:  isObscureText,
                      onChanged: (value){
                        debugPrint(value);
                      },
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(contentPadding: EdgeInsets.only(top: 0),
                        enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
                        focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
                        hintText: "Senha",
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: const Icon(Icons.lock, color: Colors.purple),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                          isObscureText = !isObscureText;  
                          });            
                        },
                        child: Icon(
                          isObscureText ? Icons.visibility : Icons.visibility_off,
                          color: Colors.purple,
                        ),
                      )
                      )
                      
                    )
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                   Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: double.infinity,
                      child: TextButton(onPressed: () {
                        if (emailController.text.trim() == "email@email.com" && senhaController.text.trim() == "123"){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login efetuado com sucesso!")));
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MainPage()));
                        }
                        else{
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Erro ao efetuar login")));
                        }
                        debugPrint(emailController.text);
                        debugPrint(senhaController.text);
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )),
                        backgroundColor: MaterialStateProperty.all(Colors.purple)
                      ),
                       child: Text("Entrar", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),)),
                    ),
                  ),
                  Expanded(child: Container()),
                   Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 30,
                    alignment: Alignment.center,
                    child: Text("Esqueci minha senha",
                    style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.w200),),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 30,
                    alignment: Alignment.center,
                    child: Text("Criar conta",
                    style: TextStyle(color: Colors.green, fontWeight: FontWeight.w400),),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
          ),
          ),
        ),
      ),
    );
  }
}