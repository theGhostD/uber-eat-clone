import 'package:flutter/material.dart';
import 'package:uber_eat/features/home/presentation/widgets/location_section.dart';
import 'package:uber_eat/features/home/presentation/widgets/main_category.dart';
import 'package:uber_eat/features/home/presentation/widgets/mini_category.dart';
import 'package:uber_eat/features/home/presentation/widgets/promo_card.dart';
import 'package:uber_eat/features/home/presentation/widgets/resturant_card.dart';
import 'package:uber_eat/mocks/index.dart';

class DeliveryTabItem extends StatelessWidget {
  const DeliveryTabItem({super.key});

  @override
  Widget build(BuildContext context) {
    void openBottomModal() {
      showModalBottomSheet(
        // useSafeArea: true,
        showDragHandle: true,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        context: context,
        builder: (context) {
          return MainCategory();
        },
      );
    }

    return SingleChildScrollView(
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          children: [
            Container(
              color: Theme.of(context).colorScheme.secondary,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(height: 12),
                    // location text
                    LocationSection(),
                    SizedBox(height: 12),
                    // mini category
                    SizedBox(
                      height: 200,
                      child: MiniCategory(ontap: openBottomModal),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              color: Theme.of(context).colorScheme.secondary,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: Column(
                  children: availableResturantList
                      .take(2)
                      .map((resturant) => ResturantCard(resturant: resturant))
                      .toList(),
                ),
              ),
            ),

           
            // promo section
            Container(
              color: Theme.of(context).colorScheme.secondary,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: availablePromo
                        .take(2)
                        .map((promo) => PromoCard(promo: promo))
                        .toList(),
                  ),
                ),
              ),
            ),
           

            Container(
              color: Theme.of(context).colorScheme.secondary,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: Column(
                  children: availableResturantList
                      .skip(availableResturantList.length - 3)
                      .map((resturant) => ResturantCard(resturant: resturant))
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
