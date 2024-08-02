import 'package:ecoder/screens/subcategory_video_page.dart';
import 'package:flutter/material.dart';
import '../models/data_model.dart';
import '../services/api_service.dart';


class SubcategoryCard extends StatefulWidget {
  const SubcategoryCard( {Key? key,}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SubcategoryCardState createState() => _SubcategoryCardState();
}

class _SubcategoryCardState extends State<SubcategoryCard> {
  List<Subcategory>? _subcategory;

   @override
  void initState() {
    super.initState();
    
    _fetchSubcategory();
  }

Future<void> _fetchSubcategory() async {
  final ApiService apiService = ApiService();
  final List<Subcategory> subcategory = await apiService.fetchSubcategory();
  setState(() {
    _subcategory = subcategory;
  });
}

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _subcategory != null
          ? ListView.builder(
              itemCount: _subcategory?.length,
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
            _subcategory![index].description,
            //height: 200.0,
           // width: 200.0,
          ),
          const SizedBox(height: 8.0),
          Text(
            _subcategory![index].name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
         
         
        ElevatedButton(
  onPressed: () {
   Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SubcategoryVideoPage(
         subccategory: _subcategory![index].name,
        ),
      ),
    );
  },
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(168, 218, 220,1), shape: RoundedRectangleBorder(
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
