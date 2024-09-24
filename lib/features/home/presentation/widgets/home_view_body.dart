import 'package:flutter/material.dart';
import 'package:nectar/core/constants.dart';
import 'package:nectar/features/home/presentation/widgets/custom_card.dart';
import 'package:nectar/features/home/presentation/widgets/custom_search_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(
          image: AssetImage('assets/images/carrot.png'),
          height: 35,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const CustomSearchTextField(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/images/banner.jpg'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Exculsive Offer',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                width: 130,
              ),
              Text(
                'See All',
                style: TextStyle(color: KPrimaryColor),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .32,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: CustomCard(),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
