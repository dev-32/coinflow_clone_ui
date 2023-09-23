import 'package:coinflow_clone_ui/utils/percent_tile.dart';
import 'package:flutter/material.dart';

class SecondSection extends StatelessWidget {
  const SecondSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
        margin: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                  child: Text(
                'When to buy',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              )),
              const PercentTile(
                  imagePath: 'assets/images/bitcoin.png',
                  mainText: 'Bitcoin',
                  subText: 'BTC',
                  percent: 0.68,
                  price: '23,877.48'),
              const PercentTile(
                  imagePath: 'assets/images/ethereum.png',
                  mainText: 'Ethereum',
                  subText: 'ETH',
                  percent: 0.85,
                  price: '1,517.53'),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Add Crypto to watchlist',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
