import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:uber_eat/features/auth/presentation/mocks/index.dart';
import 'package:uber_eat/features/auth/presentation/models/country_models.dart';

class PhoneNumberWidget extends StatefulWidget {
  const PhoneNumberWidget({super.key});

  @override
  State<PhoneNumberWidget> createState() => _PhoneNumberWidgetState();
}

class _PhoneNumberWidgetState extends State<PhoneNumberWidget> {
  CountryModels selectedCountry = availableCountry[0];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.grey[200]),
              child: SizedBox(
                width: 90,
                height: 50,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2<CountryModels>(
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
                              width: 32,
                              height: 24,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.error),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                country.countryName,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            SizedBox(width: 16),
                            Text(country.countryCode),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedCountry = value!;
                      });
                    },
                    selectedItemBuilder: (context) {
                      return availableCountry.map((country) {
                        return Row(
                          children: [
                            Image.network(
                              country.imageUrl,
                              width: 40,
                              height: 28,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.error, size: 24),
                            ),
                          ],
                        );
                      }).toList();
                    },
                    buttonStyleData: ButtonStyleData(
                      padding: EdgeInsets.all(12),
                    ),
                    dropdownStyleData: DropdownStyleData(
                      width:
                          constraints.maxWidth, // Use the width of the SizedBox
                      offset: const Offset(
                        0,
                        -5,
                      ), // Optional: Adjust vertical offset
                      maxHeight: 300,
                      elevation: 1,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child:  SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 12,right: 12),
                          child: Text(selectedCountry.countryCode,style: TextStyle(fontWeight: FontWeight.w500),),
                        ),
                        prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0,maxHeight: 50),
                    
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                    
                        fillColor: Colors.grey[200],
                        filled: true,
                        border: InputBorder.none,
                    
                        hintText: 'Mobile number',
                        hintStyle: TextStyle(
                          color: Color(0xFF7F7F7F)
                        )
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
            ),
            //           Expanded(

            //             child: TextField(
            //               decoration: InputDecoration(
            //               //  isDense: true,
            //  prefixIcon:Text("\$"),
            //  prefixIconConstraints: BoxConstraints(minWidth: 28, minHeight: 0),

            //              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),

            //                 fillColor: Colors.grey[200],
            //                 filled: true,
            //                 border: InputBorder.none,

            //                 hintText: 'Mobile number',
            //               ),
            //                keyboardType: TextInputType.phone,
            //             ),
            //           ),
          ],
        );
      },
    );
  }
}
