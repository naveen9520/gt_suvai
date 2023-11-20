import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:gt_suvai/restraruntDescription.dart';
import 'package:gt_suvai/s.dart';

import 'color.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  String? userSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 10.0,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(right: 18.0, top: 8),
            child: SizedBox(
                height: 40,
                width: double.infinity,
                child: TypeAheadField(
                  noItemsFoundBuilder: (context) => const SizedBox(
                    height: 50,
                    child: Center(
                      child: Text('No Item Found'),
                    ),
                  ),
                  suggestionsBoxDecoration: const SuggestionsBoxDecoration(
                      color: Colors.white,
                      elevation: 4.0,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                  debounceDuration: const Duration(milliseconds: 200),
                  textFieldConfiguration: TextFieldConfiguration(

                      decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                15.0,
                              )),
                          enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                              borderSide: BorderSide(color: Colors.black)),
                          hintText:"",
                          contentPadding:
                          const EdgeInsets.only(top: 4, left: 10),
                          hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 14),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon:
                              const Icon(Icons.search, color: Colors.grey)),
                          fillColor: Colors.white,
                          filled: true)),
                  suggestionsCallback: (value) {
                    return StateService.getSuggestions(value);
                  },
                  itemBuilder: (context, String suggestion) {
                    return Row(
                      children: [
                        const Icon(
                          Icons.refresh,
                          color: Colors.grey,
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              suggestion,
                              maxLines: 1,
                              // style: TextStyle(color: Colors.red),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                      ],
                    );
                  },
                  onSuggestionSelected: (String suggestion) {
                    setState(() {
                      userSelected = suggestion;
                    });
                  },
                )),
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Text(
                userSelected ?? 'Search',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                    const HotelDescription()),
                  );
                });
              },
              child: Card(
                elevation: 10,
                shadowColor: Colors.black,
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.search,color: gtGreen,)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AnimatedTextKit(
                          totalRepeatCount: 5000,
                          animatedTexts: [
                            RotateAnimatedText('search Restaurants..',
                                textStyle:abc),
                            RotateAnimatedText('search dishes..',
                                textStyle:abc),
                            RotateAnimatedText('search favourite foods..',
                                textStyle:abc),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ));;
  }
}


