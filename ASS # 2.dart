void main() {

// Question No 01
  print("------Question No 01------");

 
  List<String> names = ['Murtaza', 'Ali', 'Imran', 'Bilal', 'Syed'];
  for (String name in names) {
    print(name);
  }




  //Question No 02
  print("------Question No 02------");

 List<String> days = [];
  days.add('Monday');
  days.add('Tuesday');
  days.add('Wednesday');
  days.add('Thursday');
  days.add('Friday');
  days.add('Saturday');
  days.add('Sunday');
  for (String day in days) {
    print(day);
  }





  //Question No 03
  print("------Question No 03------");

// Create a list of days
  List<String> days1 = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

  // Print the original list
  print('Original list: $days1');

  // Remove each day one by one from the end of the list
  while (days1.isNotEmpty) {
    // Remove the last day
    String removedDay = days1.removeLast();
    // Print the removed day and the updated list
    print('Removed day: $removedDay');
    print('Remaining list: $days1');
  }






  //Question No 04
  print("------Question No 04------");

 // Create a list of numbers
  List<int> numbers = [34, 7, 23, 32, 5, 62];
  // Print the original list
  print('Original list: $numbers');
  // Find the smallest and greatest numbers
  int smallest = numbers.reduce((curr, next) => curr < next ? curr : next);
  int greatest = numbers.reduce((curr, next) => curr > next ? curr : next);
  // Print the smallest and greatest numbers
  print('Smallest number: $smallest');
  print('Greatest number: $greatest');





  // Question No 05
  print("------Question No 05------");

 // Create a map with name and phone keys
  Map<String, String> contacts = {
    'Murtaz': '123-4567',
    'Ali': '987-6543',
    'Imran': '555-1234',
    'Bilal': '111-2222'
  };
  // Print the original map
  print('Original map: $contacts');
  // Use where to find all keys that have length 4
  Iterable<String> keysWithLength4 = contacts.keys.where((key) => key.length == 4);
  // Print the keys with length 4
  print('Keys with length 4: $keysWithLength4');





  // Question No 06
  print("------Question No 06------");


  // Create a map named world
  Map<String, Map<String, String>> world = {
    'USA': {
      'capitalCity': 'Washington, D.C.',
      'currency': 'USD',
      'language': 'English',
    },
    'Japan': {
      'capitalCity': 'Tokyo',
      'currency': 'JPY',
      'language': 'Japanese',
    },
    'Germany': {
      'capitalCity': 'Berlin',
      'currency': 'EUR',
      'language': 'German',
    }
  };

  // Print the original world map
  print('World map: $world');

  // Specify a country key to print the values of capitalCity and currency
  String countryKey = 'Japan';
  if (world.containsKey(countryKey)) {
    Map<String, String> countryInfo = world[countryKey]!;
    print('Country: $countryKey');
    print('Capital City: ${countryInfo['capitalCity']}');
    print('Currency: ${countryInfo['currency']}');
  } else {
    print('Country not found in the world map.');
  }




  
  // Question No 07
  print("------Question No 07------");


// Initial expenses map
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  // Check if 'fri' exists in expenses
  if (expenses.containsKey('fri')) {
    // If 'fri' exists, change its value to 5000.0
    expenses['fri'] = 5000.0;
  } else {
    // If 'fri' doesn't exist, add it to expenses with value 5000.0
    expenses['fri'] = 5000.0;
  }

  // Print updated expenses map
  print('Updated expenses: $expenses');





  // Question No 08
  print("------Question No 08-----");

  // List of maps representing users and their eligibility
  List<Map<String, dynamic>> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];

  // Print the original list
  print('Original list:');
  usersEligibility.forEach((user) => print(user));
  // Remove entries where 'eligible' is false
  usersEligibility.removeWhere((user) => user['eligible'] == false);
  // Print the updated list
  print('\nList after removing false entries:');
  usersEligibility.forEach((user) => print(user));


  // Print the original list
  print('Original list:');
  usersEligibility.forEach((user) => print(user));
  // Retain entries where 'eligible' is true
  usersEligibility.retainWhere((user) => user['eligible'] == true);
  // Print the updated list
  print('\nList after retaining true entries:');
  usersEligibility.forEach((user) => print(user));





  // Question No 09
  print("------Question No 09-----");


 List<int> numbers1 = [15, 6, 23, 8, 45, 10];
  // Using reduce to find the maximum value
  int maxValue = numbers1.reduce((currentMax, next) => currentMax > next ? currentMax : next);
  print('The maximum value in the list is: $maxValue');





// Question No 10
  print("------Question No 10-----");


List<String> originalList = ['apple', 'banana', 'orange', 'banana', 'apple', 'grape'];

  // Print the original list
  print('Original List: $originalList');

  // Remove duplicates and print the new list
  print('List without Duplicates:');
  removeDuplicates(originalList);
}

void removeDuplicates(List<String> list) {
  Set<String> seen = Set<String>(); // Set to track seen elements

  for (String element in list) {
    if (!seen.contains(element)) {
      seen.add(element); // Add element to set if it's not already present
      print(element); // Print element if it's unique
    }
  }

  // Alternatively, you can modify the original list to contain only unique elements
  list.clear();
  list.addAll(seen);




// Question No 11
  print("------Question No 11------");

 
 List<int> originalList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int n = 5; // Number of elements to take
  
  // Print the original list
  print('Original List: $originalList');
  
  // Print the first n elements from the original list
  printFirstNElements(originalList, n);
}

void printFirstNElements(List<int> list, int n) {
  // Ensure n is within bounds of the list length
  if (n > list.length) {
    n = list.length;
  }
  
  // Create a new list containing the first n elements
  List<int> newList = list.sublist(0, n);
  
  // Print the new list
  print('First $n Elements List: $newList');




 
  //Question No 12
  print("------Quetion No 12------");

 List<String> originalList = ['apple', 'banana', 'orange', 'grape'];

  // Print the original list
  print('Original List: $originalList');

  // Print the reversed list directly without storing it in a variable
  printReversedList(originalList);
}

void printReversedList(List<String> list) {
  // Print the elements of the list in reverse order
  List<String> reversedList = List.from(list.reversed);
  print('Reversed List: $reversedList');





  //Question No 13
  print("------Question No 13------");

 List<int> originalList = [3, 5, 2, 5, 1, 3, 4, 2];

  // Print the original list
  print('Original List: $originalList');

  // Print the unique elements directly without storing them in a variable
  printUniqueElements(originalList);
}

void printUniqueElements(List<int> list) {
  Set<int> seen = Set<int>(); // Set to track seen elements

  for (int element in list) {
    if (!seen.contains(element)) {
      seen.add(element); // Add element to set if it's not already present
      print(element); // Print the unique element
    }
  }





  //Question No 14
  print("------Question No 14------");


List<int> originalList = [5, 2, 8, 1, 3, 7, 4];

  // Print the original list
  print('Original List: $originalList');

  // Print the sorted list without modifying the original list
  printSorted(originalList);
}

void printSorted(List<int> list) {
  // Create a new sorted list without modifying the original list
  List<int> sortedList = List.from(list)..sort();

  // Print the sorted list
  print('Sorted List: $sortedList');




  // Question No 15
  print("------Question No 15------");

 
List<int> originalList = [-3, 5, -1, 8, -2, 0, 7];

  // Print the original list
  print('Original List: $originalList');

  // Filter out negative numbers and print the new list
  printPositiveNumbers(originalList);
}

void printPositiveNumbers(List<int> list) {
  // Use the where() method to filter out negative numbers
  List<int> positiveNumbers = list.where((number) => number >= 0).toList();

  // Print the list of positive numbers
  print('Positive Numbers List: $positiveNumbers');




  // Question No 16
  print("------Question No 16------");


 List<int> originalList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Print the original list
  print('Original List: $originalList');

  // Filter out odd numbers and print the new list of even numbers
  printEvenNumbers(originalList);
}

void printEvenNumbers(List<int> list) {
  // Use the where() method to filter out odd numbers
  List<int> evenNumbers = list.where((number) => number % 2 == 0).toList();

  // Print the list of even numbers
  print('Even Numbers List: $evenNumbers');



  
  // Question No 17
  print("------Question No 17------");


 List<int> originalList = [1, 2, 3, 4, 5];

  // Print the original list
  print('Original List: $originalList');

  // Print the squared values directly without storing them in a variable
  printSquaredValues(originalList);
}

void printSquaredValues(List<int> list) {
  // Use the map() method to square each value in the list and print it
  list.map((number) => number * number).forEach((squaredNumber) {
    print(squaredNumber);
  });




  // Question No 18
  print("------Question No 18-----");


// Create the person map
  Map<String, dynamic> person = {
    'name': 'John',
    'age': 25,
    'isStudent': true,
  };

  // Extract values from the person map
  bool isStudent = person['isStudent'];
  int age = person['age'];

  // Check eligibility criteria
  if (isStudent && age > 18) {
    print('Eligible');
  } else {
    print('Not eligible');
  }
 

  

  // Question No 19
  print("------Question No 19-----");


// Define the product map
  Map<String, dynamic> product = {
    'name': 'Laptop',
    'price': 1200.0,
    'quantity': 5,
  };

  // Extract quantity from the product map
  int quantity = product['quantity'];

  // Check if the product is in stock
  if (quantity > 0) {
    print('In stock');
  } else {
    print('Out of stock');
  }
 



// Question No 20
  print("------Question No 20-----");

  
 // Define the car map
  Map<String, dynamic> car = {
    'brand': 'Toyota',
    'color': 'Red',
    'isSedan': true,
  };

  // Extract values from the car map
  bool isSedan = car['isSedan'];
  String color = car['color'];

  // Check if the car is a sedan and red in color
  if (isSedan && color == 'Red') {
    print('Match');
  } else {
    print('No match');
  }



  
// Question No 21
  print("------Question No 21-----");

 // Define the user map
  Map<String, dynamic> user = {
    'name': 'John Doe',
    'isAdmin': true,
    'isActive': true,
  };

  // Extract values from the user map
  bool isAdmin = user['isAdmin'];
  bool isActive = user['isActive'];

  // Check if the user is an active admin
  if (isAdmin && isActive) {
    print('Active admin');
  } else {
    print('Not an active admin');
  }




// Question No 22
  print("------Question No 22-----");

// Define the shopping cart map
  Map<String, int> shoppingCart = {
    'Apple': 5,
    'Banana': 3,
    'Orange': 2,
  };

  // Check if "Apple" exists in the shopping cart
  if (shoppingCart.containsKey('Apple')) {
    print('Product found');
  } else {
    print('Product not found');
  }


  
  }
