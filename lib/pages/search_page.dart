import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 18),
              hintText: 'Search for a title...',
              hintStyle: TextStyle(
                color: Color(0xff32A873),
                fontSize: 18,
              ),
              filled: true,
              fillColor: Color(0xFF2C2A32),
              prefixIcon: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.menu,
                  color: Color(0xff32A873),
                  size: 32,
                ),
              ),
              prefixIconConstraints: BoxConstraints(
                minWidth: 80,
              ),
              suffixIcon: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.search,
                  color: Color(0xff32A873),
                  size: 32,
                ),
              ),
              suffixIconConstraints: BoxConstraints(
                minWidth: 80,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
