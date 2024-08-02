
import 'package:flutter/material.dart';
import '../models/data_model.dart';
import '../services/api_service.dart';
import '../screens/category_video_page.dart';


class CategoryCard extends StatefulWidget {
  const CategoryCard( {Key? key,}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  List<Category>? _category;

   @override
  void initState() {
    super.initState();
    
    _fetchCategory();
  }

Future<void> _fetchCategory() async {
  final ApiService apiService = ApiService();
  final List<Category> category = await apiService.fetchCategory();
  setState(() {
    _category = category;
  });
}

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _category != null
          ? ListView.builder(
              itemCount: _category?.length,
              itemBuilder: (context, index) {
                return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      color: Color(0xFF456F9D),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            _category![index].description,
            //height: 200.0,
           // width: 200.0,
          ),
          const SizedBox(height: 8.0),
          Text(
            _category![index].name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
         
         
        ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CategoryVideoPage(
         ccategory: _category![index].name,
        ),
      ),
    );
  },
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.white,  backgroundColor: Color.fromRGBO(168, 218, 220,1), // RGB color (0, 0, 255) with opacity 1
 shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ), // foreground color
    elevation: 5,
  ),
   child: const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.view_agenda),
      Text('See'),
    ],
  ),
)
        ],
      ),
    );
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
