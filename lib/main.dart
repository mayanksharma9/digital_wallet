import 'package:digital_wallet/Utility/My_card.dart';
import 'package:digital_wallet/Utility/buttons.dart';
import 'package:digital_wallet/Utility/lists.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(
    
    const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,)
     );
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(onPressed: (){},
      backgroundColor: Colors.amberAccent,
      child: const Icon(Icons.monetization_on),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.home,size: 32,color: Colors.red,),),
        
              IconButton(onPressed: () {}, icon: const Icon(Icons.settings, size: 32, color: Colors.red,),)
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(children: [
                Text('My ' ,style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Text('Cards' ,style: TextStyle(fontSize: 28),
              ),
              ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                child: const Icon(Icons.add),
                ),
            ],
          ),
          ),
          const SizedBox(height: 25),

          Container(height: 200,
          child: PageView(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            children: const [
              My_cards(balance: 2500.23,
              cardNumber: 123456789,
              expiryMonth: 10,
              expiryYear: 24,
              color: Colors.black,),
              My_cards(balance: 2500.23,
              cardNumber: 123456789,
              expiryMonth: 10,
              expiryYear: 24,
              color: Colors.blueGrey,),
              My_cards(balance: 2500.23,
              cardNumber: 123456789,
              expiryMonth: 10,
              expiryYear: 24,
              color: Colors.greenAccent,),
            ],
          ),),

          const SizedBox(height: 10),

          SmoothPageIndicator(controller: _controller, 
          count: 3,
          effect: const ExpandingDotsEffect(activeDotColor: Colors.black),),

          SizedBox(height: 40,),


          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttons(
                  iconImagePath: 'assets/images/Send.png', 
                  buttonText: "Send"),
                  buttons(
                  iconImagePath: 'assets/images/Pay.png', 
                  buttonText: "Pay"),
                  buttons(iconImagePath: 'assets/images/BillPay.png', 
                  buttonText: 'Bill Pay')
                
              ],
            ),
          ),
          const SizedBox(height: 40,),

          const Padding(padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(children: [
            Lists(iconImagePath: 'assets/images/Statistics.png', titleTitle: "Statistics", titleSubTitle: "Income and Payments"),
            Lists(iconImagePath: "assets/images/Transactions.png", titleTitle: 'Transactions', titleSubTitle: "Transaction History")
            
          ]),)
          
        ]),
      ),
    );
  }
}
