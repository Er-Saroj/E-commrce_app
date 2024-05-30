import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/Product%20Listing/Product_Listing.dart';
import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/Product%20Listing/Search_field/filter.dart';
import 'package:first_ecommrce_app/widget/Home/categories/Sub_Category/Electronic.dart';
import 'package:first_ecommrce_app/widget/Home/categories/all_blank_page.dart';
import 'package:flutter/material.dart';

class SearchBar1 extends StatefulWidget {
  @override
  _SearchBar1State createState() => _SearchBar1State();
}

class _SearchBar1State extends State<SearchBar1> {
  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ChooseOptionBottomSheet();
      },
    );
  }

  TextEditingController _searchController = TextEditingController();
  List<String> _allItems = [
    "Laptops",
    "Mobile phones",
    "Headphones",
    "Smart Watches",
    "Mobile Cases",
    "Monitors",
    "Head Phones",
    "Charger",
  ];
  List<String> _filteredItems = [];
  List<String> _recentSearches = [];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filterItems);
  }

  void _filterItems() {
    List<String> results = [];
    if (_searchController.text.isEmpty) {
      results.addAll(_recentSearches);
    } else {
      results.addAll(
        _allItems.where(
          (item) =>
              item.toLowerCase().contains(_searchController.text.toLowerCase()),
        ),
      );
    }
    setState(() {
      _filteredItems = results;
    });
  }

  void _addToRecentSearches(String searchQuery) {
    if (!_recentSearches.contains(searchQuery) && searchQuery.isNotEmpty) {
      _recentSearches.add(searchQuery);
      if (_recentSearches.length > 10) {
        // Limit recent searches to 10 items
        _recentSearches.removeAt(0); // Remove the oldest search
      }
    }
  }

  @override
  void dispose() {
    _searchController.removeListener(_filterItems);
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Image.asset("assert/photos/circle.png"),
        ),
        leadingWidth: 50,
        title: Text("QuickMart"),
        titleSpacing: 0,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Product_List()));
              },
              child: Image.asset(
                "assert/photos/cross.png",
                width: 35,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onSubmitted: _addToRecentSearches,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assert/photos/search.png",
                      color: Colors.black54, width: 15),
                ),
                labelText: 'Search',
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 15,
                    child: InkWell(
                      onTap: () {
                        _openBottomSheet(context);
                      },
                      child: Image.asset("assert/photos/option.png",
                          color: Colors.black54),
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (_searchController.text.isEmpty &&
              _recentSearches.isNotEmpty) // Show label only when appropriate
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "RECENT SEARCH",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
            ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: _filteredItems.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    switch (index) {
                      case 0:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FashionPage()),
                        );
                        break;
                      case 1:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FashionPage()),
                        );
                        break;
                      case 2:
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Furniture()),
                        );
                        break;
                      case 3:
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Industrial()),
                        );
                        break;
                      case 4:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home_decore()),
                        );
                        break;
                      case 5:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Sub_Categories()),
                        );
                        break;
                      case 6:
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Health()),
                        );
                        break;
                      case 7:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Cons_Real_State()),
                        );
                        break;
                      case 8:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Fabrication()),
                        );
                        break;
                      case 9:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Electrical_Equipment()),
                        );
                        break;
                      default:
                        break;
                    }
                    ;
                  },
                  child: ListTile(
                      title: Text(_filteredItems[index]),
                      trailing:
                          Image.asset("assert/photos/tir.png", width: 28)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
