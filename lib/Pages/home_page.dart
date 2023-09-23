
import 'package:coinflow_clone_ui/Pages/second_section.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            // Upper Part
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.purple.shade100, Colors.orange.shade100, Colors.yellow.shade100]
                  )
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.menu),
                            const SizedBox(
                              width: 9,
                            ),
                            Container(
                              height: 50,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.purple.shade100,
                                borderRadius: BorderRadius.circular(28)
                              ),
                              child: Image.asset(
                                'assets/images/hacker.png',
                                height: 40,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.notifications_none_outlined,
                              size: 34,
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Center(
                      child: Text('My balance'),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('\$', style: TextStyle(
                          fontSize: 40,fontWeight: FontWeight.bold
                        ),),
                        Text(
                          '0',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                        ),
                        Text('.00', style: TextStyle(
                          fontSize: 50,color: Colors.grey,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 13),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.shade300,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.wallet, color: Colors.white,),
                              const SizedBox(width: 5,),
                              Text('Buy crypto', style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 13),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.reset_tv),
                              const SizedBox(width: 5,),
                              Text('Transfer crypto',),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SecondSection(),
            // Lower Part
          ],
        ));
  }
}
