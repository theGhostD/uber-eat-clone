import 'package:flutter/material.dart';
import 'package:uber_eat/features/auth/presentation/mocks/index.dart';
import 'package:uber_eat/features/auth/presentation/models/country_models.dart';

class PhoneNumberWidget extends StatefulWidget {
  const PhoneNumberWidget({super.key});

  @override
  State<PhoneNumberWidget> createState() => _PhoneNumberWidgetState();
}

class _PhoneNumberWidgetState extends State<PhoneNumberWidget> {
  CountryModels? selectedCountry;

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        SizedBox(
          width: 200,
          child: DropdownButton(
             menuWidth: 200, // Constrain dropdown menu width
            menuMaxHeight: 300,
            hint: const Text('Select a country'),
            value: selectedCountry,
            items: availableCountry.map((country) {
              return DropdownMenuItem(
                value: country,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      country.imageUrl,
                      width: 24,
                      height: 24,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.error),
                    ),
          
                    Expanded(
                      child: Text(
                        country.countryName,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        
                      ),
                    ),
          
                    Text(country.countryCode),
                  ],
                ),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedCountry = value;
              });
            },
            selectedItemBuilder: (context) {
              return availableCountry.map((country) {
                return Row(
                  children: [
                    Image.network(
                      country.imageUrl,
                      width: 24,
                      height: 24,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.error, size: 24),
                    ),
                  ],
                );
              }).toList();
            },

            
            
          ),
        ),

       
      ],
    );
  }
}
