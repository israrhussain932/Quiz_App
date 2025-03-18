 // we will create our question model here
class Question{
  // define how a question look like .
  // every question will have an id.
  final String id;

 // every question will have a title
  final String title;

// every question will have a option
  final Map<String,bool> option;


  // create a constructor
  Question({
    required this.id,
    required this.title,
    required this.option,

});

 @override
  String toString(){
    return 'Question(id:$id,title: $title,option:$option)';
 }


}