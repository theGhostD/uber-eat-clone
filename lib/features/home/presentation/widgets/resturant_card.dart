import 'package:flutter/material.dart';
import 'package:uber_eat/features/home/presentation/models/resturant.dart';

class ResturantCard extends StatelessWidget {
  const ResturantCard({super.key, required this.resturant});

  final ResturantCardModel resturant;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('InkWell tapped!');
      },

      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                resturant.imageUrl,
                width: double.infinity,
                height: 154,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    resturant.isPromo!
                        ? Container(
                            width: MediaQuery.of(context).size.width * 0.6,

                            decoration: BoxDecoration(
                              color: Color(0xFF34A853),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                            child: Text(
                              "5 orders until \$8 reward",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          )
                        : SizedBox(),

                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    resturant.title,

                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      height: 21 / 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (resturant.duration != null)
                    Row(
                      children: [
                        Text(
                          '\$0.29 Delivery Fee',
                          style: TextStyle(
                            color: Color(0xFF6B6B6B),
                            fontSize: 14,
                            height: 21 / 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.circle, size: 3, color: Color(0xFF6B6B6B)),
                        SizedBox(width: 8),
                        Text(
                          resturant.duration!,
                          style: TextStyle(
                            color: Color(0xFF6B6B6B),
                            fontSize: 14,
                            height: 21 / 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                ],
              ),

              Container(
                width: 28,
                height: 28,

                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Center(
                  child: Text(
                    resturant.rating,
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
