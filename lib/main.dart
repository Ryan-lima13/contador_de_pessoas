import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());

}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      home:  HomePage(),
    );

  }

}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  void decrement(){
   setState((){
     count--;
     print(count);
   });

  }
  void increment(){
    setState((){
      count++;
      print(count);
    });
  }
  bool get isEmpty => count == 0;
  bool get isFull => count == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text(
              isFull? 'Lotado':'Pode entrar!',
              style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),

            ),
            const SizedBox(height: 32,),
            Text('$count',
              style:  TextStyle(
                  fontSize: 20,
                  fontWeight:  FontWeight.bold,
                  color: isFull? Colors.red: Colors.white
              ),
            ),
            const SizedBox(height: 32,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: isEmpty? null:decrement,
                    style: TextButton.styleFrom(
                        backgroundColor: isEmpty? Colors.white.withOpacity(0.2): Colors.white,
                        fixedSize: const Size(100, 100),
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)
                        )


                    ),
                    child: Text('Saiu',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16
                      ),

                    )
                ),
                const SizedBox(width: 32,),
                TextButton(onPressed: isFull? null: increment,
                    style: TextButton.styleFrom(
                        backgroundColor: isFull? Colors.white.withOpacity(0.2):Colors.white,
                        fixedSize: const Size(100, 100),
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)
                        )
                    ),
                    child: Text('Entrou',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16
                      ),

                    )
                ),
              ],

            ),
          ],
        )


    );

  }
}



