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
        backgroundColor: Colors.white,
        context: context,
        builder: (context) {
          return MainCategory();
        },
      );
    }

    return SingleChildScrollView(
      child: Container(
        color: Color(0xFFF6F6F6),
        child: Column(
          children: [
            Container(
              color: Colors.white,
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

            SizedBox(height: 12),

            Container(
              color: Colors.white,
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

            SizedBox(height: 12),
            // promo section
            Container(
              color: Colors.white,
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
            SizedBox(height: 12),

            Container(
              color: Colors.white,
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
