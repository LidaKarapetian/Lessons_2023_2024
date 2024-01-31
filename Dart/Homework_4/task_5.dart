// Create a JSON string representing a list of books, each with properties like title, author, and publication year.
// Decode the JSON string and print the details of each book to the console.
//  5.1. Differentiate the books by it's publication year. For instance, those books were pubished in 2023, filter out and print the list of that books.
//  5.2. Create a new files named "old-books.json" and "new-books.json". Write the content to the files from filtered lists accordingly.
//   old-books.json example:
//   	{
// 		"newBooks": [
//    		....
// 		]
// 	}
//   new-books.json example:
//   	{
// 		"newBooks": [
//    		....
// 		]
// 	}

import "dart:io";
import "dart:convert";

var books = [
  {
    'title': 'The Alchemist',
    'author': 'Paulo Coelho',
    'publication_year': 1988
  },
  {
    'title': 'The Da Vinci Code',
    'author': 'Dan Brown',
    'publication_year': 2003
  },
  {
    'title': 'The Girl on the Train',
    'author': 'Paula Hawkins',
    'publication_year': 2015
  },
  {
    'title': 'The Immortalists',
    'author': 'Chloe Benjamin',
    'publication_year': 2018
  },
  {
    'title': 'The Testaments',
    'author': 'Margaret Atwood',
    'publication_year': 2019
  },
  {
    'title': 'The Vanishing Half',
    'author': 'Brit Bennett',
    'publication_year': 2020
  },
  {'title': 'The Push', 'author': 'Ashley Audrain', 'publication_year': 2021},
  {
    'title': 'The Four Winds',
    'author': 'Kristin Hannah',
    'publication_year': 2021
  }
];

void writeToJsonFiles() {
  var jsonString = json.encode(books);
  var decodedBooks = json.decode(jsonString);
  print('Books:');
  for (var book in decodedBooks) {
    print('Title: ${book['title']}');
    print('Author: ${book['author']}');
    print('Publication year: ${book['publication_year']}');
    print('');
  }

  var newBooks = <Map<String, dynamic>>[];
  var oldBooks = <Map<String, dynamic>>[];
  for (var book in decodedBooks) {
    if (book['publication_year'] >= 2020) {
      newBooks.add(book);
    } else {
      oldBooks.add(book);
    }
  }
  var newBooksJson = json.encode({'newBooks': newBooks});
  var oldBooksJson = json.encode({'oldBooks': oldBooks});

  File('new-books.json').writeAsStringSync(newBooksJson);
  File('old-books.json').writeAsStringSync(oldBooksJson);
}

void main() {
  writeToJsonFiles();
  print("The data was written to the files");
}
