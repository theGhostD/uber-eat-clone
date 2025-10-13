import 'package:flutter/material.dart';
import 'package:uber_eat/features/home/presentation/models/promo.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({super.key, required this.promo});

  final PromoModel promo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 165, 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: promo.color,
      ),
       clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.only(right: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // this is'n't working as expected.. i wat the items to all the full height and have a space between
              children: [
                SizedBox(
                 width: MediaQuery.of(context).size.width * 0.45,
                  child: Text(
                    promo.copy,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    softWrap: true,
               
                maxLines: 4, 
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6, right: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Browse offer',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 2),
                        Icon(Icons.arrow_right_alt_rounded),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Image.asset(
            promo.imageUrl,
            width: 136,
            height: 165,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
