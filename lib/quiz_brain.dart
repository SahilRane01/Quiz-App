import 'question.dart';
import 'dart:math';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
        questionText: "A variable name in Python can start with a number.",
        questionAnswer: false),
    Question(
        questionText:
            "In C++, the `int` data type can store fractional numbers.",
        questionAnswer: false),
    Question(
        questionText: "HTML stands for Hypertext Markup Language.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the main method must be declared as public static void main(String[] args).",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, indentation is not important for defining code blocks.",
        questionAnswer: false),
    Question(
        questionText:
            "The `if` statement in JavaScript can be used without an `else` statement.",
        questionAnswer: true),
    Question(
        questionText:
            "SQL is used for structuring and retrieving data from a database.",
        questionAnswer: true),
    Question(
        questionText: "CSS is used to add functionality to a web page.",
        questionAnswer: false),
    Question(
        questionText: "In C, a char can store multiple characters.",
        questionAnswer: false),
    Question(
        questionText: "The for loop in Python always requires a condition.",
        questionAnswer: false),
    Question(
        questionText: "In Java, strings are mutable.", questionAnswer: false),
    Question(
        questionText:
            "In Python, a list can contain elements of different data types.",
        questionAnswer: true),
    Question(
        questionText:
            "The `GET` method in HTTP is used to submit data to be processed.",
        questionAnswer: false),
    Question(
        questionText:
            "In C++, a `class` and a `struct` are essentially the same.",
        questionAnswer: false),
    Question(
        questionText: "In JavaScript, `==` compares both value and type.",
        questionAnswer: false),
    Question(
        questionText: "SQL injection is a type of security vulnerability.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, `lambda` functions can have multiple expressions.",
        questionAnswer: false),
    Question(
        questionText:
            "The `HEAD` method in HTTP retrieves the headers of a resource.",
        questionAnswer: true),
    Question(
        questionText:
            "In CSS, the `margin` property can take up to four values.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, a `try` block must always be followed by a `catch` block.",
        questionAnswer: false),
    Question(
        questionText: "In C++, templates are used for generic programming.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `async` and `await` keywords are used for synchronous programming.",
        questionAnswer: false),
    Question(
        questionText:
            "In Java, the `volatile` keyword is used to make variables thread-safe.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `JOIN` clause is used to combine rows from two or more tables.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `Promise` object represents the eventual completion or failure of an asynchronous operation.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `with` statement is used to handle exceptions.",
        questionAnswer: false),
    Question(
        questionText:
            "In C++, the `std::move` function is used to copy objects.",
        questionAnswer: false),
    Question(
        questionText:
            "In Java, a method declared as `final` cannot be overridden.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `typeof` operator returns the type of a variable.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `self` parameter in a method definition refers to the instance of the class.",
        questionAnswer: true),
    Question(
        questionText:
            "In C, `malloc` and `free` are used for dynamic memory allocation.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `HAVING` clause is used to filter records after the `GROUP BY` clause.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `transient` keyword is used to indicate that a field should not be serialized.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `import` statement is used to import modules.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, a `virtual` function can be overridden in a derived class.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `let` keyword declares a block-scoped variable.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `PRIMARY KEY` constraint uniquely identifies each record in a table.",
        questionAnswer: true),
    Question(
        questionText: "In Python, a `set` can contain duplicate elements.",
        questionAnswer: false),
    Question(
        questionText:
            "In Java, the `super` keyword is used to refer to the superclass.",
        questionAnswer: true),
    Question(
        questionText:
            "In CSS, the `float` property is used to position an element.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, decorators are used to modify the behavior of a function.",
        questionAnswer: true),
    Question(
        questionText: "In JavaScript, `null` and `undefined` are the same.",
        questionAnswer: false),
    Question(
        questionText:
            "In C++, the `explicit` keyword is used to prevent implicit conversions.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `UNION` operator is used to combine the result sets of two or more SELECT statements.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `abstract` keyword is used to define a method without an implementation.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, a generator function uses the `yield` keyword to return values.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, arrow functions do not have their own `this` context.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `new` operator allocates memory and returns a pointer.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `instanceof` operator is used to test whether an object is an instance of a specific class or subclass.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `__init__` method is a constructor for a class.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `delete` operator is used to deallocate memory allocated by `malloc`.",
        questionAnswer: false),
    Question(
        questionText:
            "In JavaScript, the `===` operator checks both value and type equality.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, list comprehensions provide a concise way to create lists.",
        questionAnswer: true),
    Question(
        questionText: "In Java, an interface can have static methods.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `LEFT JOIN` returns all records from the left table and the matched records from the right table.",
        questionAnswer: true),
    Question(
        questionText: "In JavaScript, `NaN` stands for 'Not a Number'.",
        questionAnswer: true),
    Question(
        questionText: "In Python, tuples are mutable.", questionAnswer: false),
    Question(
        questionText:
            "In C++, destructors are called when an object goes out of scope.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, `finalize` is a method used for garbage collection.",
        questionAnswer: false),
    Question(
        questionText:
            "In SQL, the `LIKE` operator is used to search for a specified pattern in a column.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, `None` is equivalent to `null` in other programming languages.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `friend` keyword grants access to private members of a class.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `synchronized` keyword is used to control the access of multiple threads to any shared resource.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `DELETE` statement removes rows from a table based on a condition.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, `async` functions always return a `Promise`.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `@staticmethod` decorator is used to define a static method.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, an enum is a special class that represents a group of constants.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `throw` keyword is used to signal an exception.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `ALTER` statement is used to add, delete, or modify columns in an existing table.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `let` and `const` keywords were introduced in ES6.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, a `metaclass` is a class of a class that defines how a class behaves.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `Callable` interface is used to define a task that returns a result.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `std::unique_ptr` is a smart pointer that owns and manages another object.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `TRUNCATE` statement removes all rows from a table without logging individual row deletions.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, `None` is not equivalent to `null` in other programming languages.",
        questionAnswer: false),
    Question(
        questionText:
            "In C++, the `friend` keyword does not grant access to private members of a class.",
        questionAnswer: false),
    Question(
        questionText:
            "In Java, the `synchronized` keyword is not used to control the access of multiple threads to any shared resource.",
        questionAnswer: false),
    Question(
        questionText:
            "In SQL, the `DELETE` statement does not remove rows from a table based on a condition.",
        questionAnswer: false),
    Question(
        questionText:
            "In JavaScript, `async` functions do not always return a `Promise`.",
        questionAnswer: false),
    Question(
        questionText:
            "In Python, the `@staticmethod` decorator is not used to define a static method.",
        questionAnswer: false),
    Question(
        questionText:
            "In Java, an enum is not a special class that represents a group of constants.",
        questionAnswer: false),
    Question(
        questionText:
            "In C++, the `throw` keyword is not used to signal an exception.",
        questionAnswer: false),
    Question(
        questionText:
            "In SQL, the `ALTER` statement is not used to add, delete, or modify columns in an existing table.",
        questionAnswer: false),
    Question(
        questionText:
            "In JavaScript, the `let` and `const` keywords were not introduced in ES6.",
        questionAnswer: false),
    Question(
        questionText:
            "In Python, a `metaclass` is not a class of a class that defines how a class behaves.",
        questionAnswer: false),
    Question(
        questionText:
            "In Java, the `Callable` interface is not used to define a task that returns a result.",
        questionAnswer: false),
    Question(
        questionText:
            "In C++, the `std::unique_ptr` is not a smart pointer that owns and manages another object.",
        questionAnswer: false),
    Question(
        questionText:
            "In SQL, the `TRUNCATE` statement does not remove all rows from a table without logging individual row deletions.",
        questionAnswer: false),
    Question(
        questionText:
            "In Python, the `async` and `await` keywords are not used for asynchronous programming.",
        questionAnswer: false),
    Question(
        questionText:
            "In Java, the `volatile` keyword is not used to make variables thread-safe.",
        questionAnswer: false),
    Question(
        questionText:
            "In SQL, the `JOIN` clause is not used to combine rows from two or more tables.",
        questionAnswer: false),
    Question(
        questionText:
            "In JavaScript, the `Promise` object does not represent the eventual completion or failure of an asynchronous operation.",
        questionAnswer: false),
    Question(
        questionText:
            "In Python, the `with` statement is not used to handle exceptions.",
        questionAnswer: false),
    Question(
        questionText:
            "In C++, the `std::move` function is not used to move objects.",
        questionAnswer: false),
    Question(
        questionText:
            "In Java, a method declared as `final` can be overridden.",
        questionAnswer: false),
    Question(
        questionText:
            "In JavaScript, the `typeof` operator does not return the type of a variable.",
        questionAnswer: false),
    Question(
        questionText:
            "In Python, the `self` parameter in a method definition does not refer to the instance of the class.",
        questionAnswer: false),
    Question(
        questionText:
            "In C, `malloc` and `free` are not used for dynamic memory allocation.",
        questionAnswer: false),
    Question(
        questionText:
            "In SQL, the `HAVING` clause is not used to filter records after the `GROUP BY` clause.",
        questionAnswer: false),
    Question(
        questionText:
            "In Java, the `transient` keyword is not used to indicate that a field should not be serialized.",
        questionAnswer: false),
    Question(
        questionText:
            "In Python, the `import` statement is not used to import modules.",
        questionAnswer: false),
    Question(
        questionText:
            "In C++, a `virtual` function cannot be overridden in a derived class.",
        questionAnswer: false),
    Question(
        questionText:
            "In JavaScript, the `let` keyword does not declare a block-scoped variable.",
        questionAnswer: false),
    Question(
        questionText:
            "In SQL, the `PRIMARY KEY` constraint does not uniquely identify each record in a table.",
        questionAnswer: false),
    Question(
        questionText: "In Python, a `set` can contain duplicate elements.",
        questionAnswer: false),
    Question(
        questionText:
            "In Java, the `super` keyword is not used to refer to the superclass.",
        questionAnswer: false),
    Question(
        questionText:
            "In CSS, the `float` property is not used to position an element.",
        questionAnswer: false),
    Question(
        questionText:
            "In Python, decorators are not used to modify the behavior of a function.",
        questionAnswer: false),
    Question(
        questionText: "In JavaScript, `null` and `undefined` are not the same.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `explicit` keyword is not used to prevent implicit conversions.",
        questionAnswer: false),
    Question(
        questionText:
            "In SQL, the `UNION` operator is not used to combine the result sets of two or more SELECT statements.",
        questionAnswer: false),
    Question(
        questionText:
            "In Java, the `abstract` keyword is not used to define a method without an implementation.",
        questionAnswer: false),
    Question(
        questionText:
            "In Python, a generator function does not use the `yield` keyword to return values.",
        questionAnswer: false),
    Question(
        questionText:
            "In JavaScript, arrow functions do not have their own `this` context.",
        questionAnswer: false),
    Question(
        questionText:
            "In C++, the `new` operator does not allocate memory and return a pointer.",
        questionAnswer: false),
    Question(
        questionText:
            "In Java, the `instanceof` operator is not used to test whether an object is an instance of a specific class or subclass.",
        questionAnswer: false),
    Question(
        questionText:
            "In Python, the `__init__` method is not a constructor for a class.",
        questionAnswer: false),
    Question(
        questionText:
            "In C++, the `delete` operator is not used to deallocate memory allocated by `malloc`.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `===` operator does not check both value and type equality.",
        questionAnswer: false),
    Question(
        questionText:
            "In Python, list comprehensions do not provide a concise way to create lists.",
        questionAnswer: false),
    Question(
        questionText: "In Java, an interface cannot have static methods.",
        questionAnswer: false),
    Question(
        questionText:
            "In SQL, the `LEFT JOIN` does not return all records from the left table and the matched records from the right table.",
        questionAnswer: false),
    Question(
        questionText: "In JavaScript, `NaN` does not stand for 'Not a Number'.",
        questionAnswer: false),
    Question(
        questionText: "In Python, tuples are mutable.", questionAnswer: false),
    Question(
        questionText:
            "In C++, destructors are not called when an object goes out of scope.",
        questionAnswer: false),
    Question(
        questionText:
            "In Java, `finalize` is not a method used for garbage collection.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `LIKE` operator is not used to search for a specified pattern in a column.",
        questionAnswer: false),
    Question(
        questionText:
            "In Python, the `super()` function is used to call a method from the parent class.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `setTimeout` function is used to call a function after a specified delay.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, `std::list` is implemented as a doubly linked list.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `throws` keyword is used in a method declaration to specify that the method can throw exceptions.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, dictionaries are unordered collections of items.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `CASE` statement is used to create conditional queries.",
        questionAnswer: true),
    Question(
        questionText: "In JavaScript, `NaN` is a falsy value.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `std::stack` container adapter does not allow iteration through its elements.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `System.out.println()` method prints a message to the standard output.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `del` statement can be used to delete an item from a list.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `FULL OUTER JOIN` returns all records when there is a match in either left or right table.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `===` operator performs a strict equality comparison.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `explicit` keyword prevents implicit type conversions for constructors.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, a `static` nested class can access instance variables of the outer class.",
        questionAnswer: false),
    Question(
        questionText:
            "In Python, the `itertools` module provides functions for creating iterators for efficient looping.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `EXISTS` operator is used to test for the existence of any record in a subquery.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `parseInt` function converts a string to an integer.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `private` access specifier restricts access to members from outside the class.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, a `native` method is implemented in a language other than Java.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `enumerate` function adds a counter to an iterable and returns it.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `INTERSECT` operator is used to combine the result sets of two or more queries and return only the rows that are present in both result sets.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `for...of` loop iterates over iterable objects like arrays, strings, and maps.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `auto` keyword automatically deduces the type of a variable from its initializer.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `transient` keyword is used to indicate that a field should not be serialized.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `range` function generates a sequence of numbers.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `UNION ALL` operator combines the result sets of two or more queries, including duplicates.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `document.getElementById` method returns the element with the specified ID.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `mutable` keyword allows a member of an object to be modified even if the object is const.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `default` keyword can be used in a switch statement to specify a block of code to be executed if no case matches.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `filter` function constructs an iterator from elements of an iterable for which a function returns true.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `COALESCE` function returns the first non-null value in a list.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `class` keyword is used to declare a class.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `inline` keyword suggests that the compiler replace a function call with the function code itself.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `this` keyword refers to the current object instance.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `random` module provides functions for generating random numbers.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `CHECK` constraint is used to limit the value range that can be placed in a column.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `Array.prototype.reduce` method executes a reducer function on each element of the array, resulting in a single output value.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `static_cast` operator is used for converting between related types.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `continue` statement skips the current iteration of a loop and proceeds with the next iteration.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `collections` module implements specialized container datatypes.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `PRIMARY KEY` constraint uniquely identifies each record in a table.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `async` keyword can be used to define asynchronous functions.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `protected` access specifier allows access to members by derived classes and classes within the same module.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `protected` access modifier allows access to members within the same package and subclasses.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `with` statement is used to wrap the execution of a block of code with methods defined by a context manager.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `IN` operator allows you to specify multiple values in a `WHERE` clause.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `Map` object holds key-value pairs and remembers the original insertion order of the keys.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `std::vector` container does not automatically resize itself when elements are added or removed.",
        questionAnswer: false),
    Question(
        questionText:
            "In Java, the `instanceof` operator checks if an object is an instance of a specific class or subclass.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `global` keyword is used to declare that a variable inside a function is global.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `BETWEEN` operator selects values within a given range.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `includes` method determines whether an array includes a certain value among its entries.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `namespace` keyword is used to declare a scope that holds a set of identifiers.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `finally` block is executed after the `try` and `catch` blocks, regardless of whether an exception is thrown or not.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `slice` object is used to slice strings, lists, and other sequence types.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `ORDER BY` clause is used to sort the result set of a query.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `splice` method changes the contents of an array by removing or replacing existing elements and/or adding new elements.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `explicit` keyword can be used only with constructors.",
        questionAnswer: false),
    Question(
        questionText:
            "In Java, the `extends` keyword is used to create a subclass.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `is` operator checks for value equality between two objects.",
        questionAnswer: false),
    Question(
        questionText: "In JavaScript, `null` is considered a falsy value.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `constexpr` keyword is used to define constants evaluated at compile time.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `switch` statement can evaluate string expressions.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, list slicing can have a negative step value to reverse the list.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `CHECK` constraint is used to ensure that the values in a column meet a specific condition.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `Array.prototype.forEach` method creates a new array with the results of calling a provided function on every element in the calling array.",
        questionAnswer: false),
    Question(
        questionText:
            "In C++, the `std::shared_ptr` can be used to share ownership of an object.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `try` block can exist without a `catch` block if there is a `finally` block.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `enumerate()` function adds a counter to an iterable and returns it.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `FOREIGN KEY` constraint uniquely identifies each record in a table.",
        questionAnswer: false),
    Question(
        questionText:
            "In JavaScript, the `Object.keys()` method returns an array of a given object's own enumerable property values.",
        questionAnswer: false),
    Question(
        questionText:
            "In C++, the `std::deque` container provides fast insertion and deletion at both the beginning and the end.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, a `synchronized` method can be accessed by multiple threads at the same time.",
        questionAnswer: false),
    Question(
        questionText:
            "In Python, the `pop()` method removes and returns an element from a set.",
        questionAnswer: false),
    Question(
        questionText:
            "In SQL, the `UNION ALL` operator returns duplicate records.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `JSON.stringify()` method converts a JavaScript object into a JSON string.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `noexcept` keyword specifies that a function does not throw exceptions.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `List` interface can be used to create an instance of an ArrayList.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `dict` data type is ordered by default in versions 3.7 and later.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `LIMIT` clause restricts the number of rows returned by a query.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `Math.random()` function returns a random integer.",
        questionAnswer: false),
    Question(
        questionText:
            "In C++, the `std::set` container allows duplicate elements.",
        questionAnswer: false),
    Question(
        questionText:
            "In Java, the `instanceof` operator can be used to test whether an object is an instance of a subclass.",
        questionAnswer: true),
    Question(
        questionText: "In Python, the `filter()` function returns a list.",
        questionAnswer: false),
    Question(
        questionText:
            "In SQL, the `ALTER` statement can be used to rename a table.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `==` operator compares both value and type.",
        questionAnswer: false),
    Question(
        questionText:
            "In C++, the `std::array` container is a fixed-size array.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `transient` keyword can be used with local variables.",
        questionAnswer: false),
    Question(
        questionText:
            "In Python, the `abs()` function returns the absolute value of a number.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `CREATE` statement is used to create a new database or table.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `Date` object represents a single moment in time in a platform-independent format.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `override` keyword is used to explicitly specify that a virtual function overrides a base class function.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `System.exit()` method terminates the currently running Java Virtual Machine.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `in` operator is used to check if a value is present in a sequence.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `DROP` statement is used to remove an entire table from a database.",
        questionAnswer: true),
    Question(
        questionText: "In JavaScript, the `NaN` value is not equal to itself.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `static` keyword can be used to create a variable that retains its value between function calls.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `HashMap` class is synchronized by default.",
        questionAnswer: false),
    Question(
        questionText:
            "In Python, the `@property` decorator is used to define getter methods in classes.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `COALESCE` function returns the first non-null value in a list of arguments.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `prototype` property is used to add methods and properties to object constructors.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `private` access specifier allows members to be accessed from outside the class.",
        questionAnswer: false),
    Question(
        questionText:
            "In Java, the `enum` keyword is used to create enumerated types.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `range()` function generates a sequence of numbers.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `RIGHT JOIN` returns all records from the right table and the matched records from the left table.",
        questionAnswer: true),
    Question(
        questionText: "In JavaScript, the `strict mode` is enabled by default.",
        questionAnswer: false),
    Question(
        questionText:
            "In C++, the `protected` access specifier allows members to be accessed within the same class and derived classes.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `static` keyword can be used with methods and variables.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `@classmethod` decorator is used to define class methods.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `OUTER JOIN` keyword can be used without specifying LEFT or RIGHT.",
        questionAnswer: false),
    Question(
        questionText:
            "In JavaScript, the `Array.prototype.reduce()` method executes a reducer function on each element of the array, resulting in a single output value.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `typedef` keyword is used to create an alias for a data type.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `throw` keyword is used to explicitly throw an exception.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `sorted()` function sorts a list in place.",
        questionAnswer: false),
    Question(
        questionText:
            "In SQL, the `HAVING` clause can be used without a `GROUP BY` clause.",
        questionAnswer: false),
    Question(
        questionText:
            "In JavaScript, the `Object.create()` method creates a new object with the specified prototype object and properties.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `namespace` keyword is used to define a scope for identifiers to avoid name conflicts.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `byte` data type is an 8-bit signed integer.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `del` statement can be used to delete an item from a list.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `PRIMARY KEY` constraint automatically creates a unique index for the key column.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `eval()` function parses a string and executes it as JavaScript code.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `auto` keyword automatically deduces the type of a variable from its initializer.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `finally` block is executed only if an exception is thrown.",
        questionAnswer: false),
    Question(
        questionText: "In Python, the `frozenset` data type is mutable.",
        questionAnswer: false),
    Question(
        questionText:
            "In SQL, the `ORDER BY` clause is used to sort the result set in ascending or descending order.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `RegExp` object is used for matching text with a pattern.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `friend` keyword grants access to private members of a class to another class or function.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `native` keyword is used to declare methods implemented in platform-dependent code, typically written in C or C++.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `global` keyword is used to declare a variable inside a function as global.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `FULL JOIN` keyword returns only the matching rows from both tables.",
        questionAnswer: false),
    Question(
        questionText:
            "In JavaScript, the `for...in` loop is used to iterate over the properties of an object.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `new` operator dynamically allocates memory for an object and returns a pointer to it.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `super` keyword is used to call the constructor of the parent class.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `itertools` module provides functions that create iterators for efficient looping.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `DEFAULT` constraint is used to set a default value for a column when no value is specified.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `Promise.all()` method waits for all promises to be resolved or any to be rejected.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `virtual` keyword is used to define a method that can be overridden in a derived class.",
        questionAnswer: true),
    Question(
        questionText:
            "In Java, the `volatile` keyword is used to declare a variable that can be changed unexpectedly.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `pass` statement is used as a placeholder for future code.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `INNER JOIN` returns records that have matching values in both tables.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `this` keyword always refers to the global object.",
        questionAnswer: false),
    Question(
        questionText:
            "In C++, the `delete` operator is used to deallocate memory allocated with `new`.",
        questionAnswer: true),
    Question(
        questionText: "In Java, the `StringBuilder` class is immutable.",
        questionAnswer: false),
    Question(
        questionText:
            "In Python, the `lambda` keyword is used to create small anonymous functions.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `BETWEEN` operator is used to filter the result set within a certain range.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `setTimeout()` function sets a timer which executes a function once after the timer expires.",
        questionAnswer: true),
    Question(
        questionText:
            "In C++, the `protected` keyword restricts access to class members from the same package.",
        questionAnswer: false),
    Question(
        questionText:
            "In Java, the `assert` keyword is used to make an assertion—a statement which the programmer believes is always true at that point in the code.",
        questionAnswer: true),
    Question(
        questionText:
            "In Python, the `super()` function is used to call a method from a parent class.",
        questionAnswer: true),
    Question(
        questionText:
            "In SQL, the `COUNT` function returns the number of non-null values in a column.",
        questionAnswer: true),
    Question(
        questionText:
            "In JavaScript, the `Number` object is a wrapper object allowing you to work with numerical values.",
        questionAnswer: true),
    Question(
        questionText:
            "In a binary search tree, the left subtree of a node contains only nodes with keys less than the node's key.",
        questionAnswer: true),
    Question(
        questionText:
            "In a linked list, the time complexity to insert an element at the beginning is O(1).",
        questionAnswer: true),
    Question(
        questionText: "A stack is a FIFO (First In, First Out) data structure.",
        questionAnswer: false),
    Question(
        questionText:
            "A queue can be efficiently implemented using two stacks.",
        questionAnswer: true),
    Question(
        questionText: "The height of a balanced binary tree is O(log n).",
        questionAnswer: true),
    Question(
        questionText:
            "In a max-heap, the largest element is always at the root.",
        questionAnswer: true),
    Question(
        questionText:
            "Dijkstra's algorithm is used to find the shortest path in an unweighted graph.",
        questionAnswer: false),
    Question(
        questionText: "A graph with no cycles is called a tree.",
        questionAnswer: true),
    Question(
        questionText: "Depth-First Search (DFS) uses a stack data structure.",
        questionAnswer: true),
    Question(
        questionText:
            "In a circular linked list, the last node points to the first node.",
        questionAnswer: true),
    Question(
        questionText:
            "The time complexity to search an element in a balanced binary search tree is O(log n).",
        questionAnswer: true),
    Question(
        questionText: "A binary tree can have at most three children per node.",
        questionAnswer: false),
    Question(
        questionText: "Breadth-First Search (BFS) uses a queue data structure.",
        questionAnswer: true),
    Question(
        questionText:
            "The time complexity of bubble sort is O(n log n) in the worst case.",
        questionAnswer: false),
    Question(
        questionText:
            "The merge sort algorithm uses the divide-and-conquer technique.",
        questionAnswer: true),
    Question(
        questionText:
            "A red-black tree is a type of self-balancing binary search tree.",
        questionAnswer: true),
    Question(
        questionText:
            "In an adjacency matrix representation of a graph, the space complexity is O(V + E).",
        questionAnswer: false),
    Question(
        questionText:
            "A hash table has an average time complexity of O(1) for search, insert, and delete operations.",
        questionAnswer: true),
    Question(
        questionText: "A graph traversal algorithm can be either BFS or DFS.",
        questionAnswer: true),
    Question(
        questionText:
            "The shortest path in a weighted graph can be found using Kruskal's algorithm.",
        questionAnswer: false),
    Question(
        questionText: "A binary heap is a complete binary tree.",
        questionAnswer: true),
    Question(
        questionText:
            "A trie data structure is used to store a dynamic set of strings.",
        questionAnswer: true),
    Question(
        questionText:
            "The in-order traversal of a binary search tree gives the elements in sorted order.",
        questionAnswer: true),
    Question(
        questionText:
            "A spanning tree of a graph is a subgraph that includes all the vertices of the graph.",
        questionAnswer: true),
    Question(
        questionText:
            "The time complexity of an optimal algorithm for finding the minimum spanning tree is O(E log V).",
        questionAnswer: true),
    Question(
        questionText:
            "An AVL tree is a type of binary search tree that is always balanced.",
        questionAnswer: true),
    Question(
        questionText: "In a directed acyclic graph (DAG), there are no cycles.",
        questionAnswer: true),
    Question(
        questionText: "A heap can be used to implement a priority queue.",
        questionAnswer: true),
    Question(
        questionText:
            "The time complexity of the quicksort algorithm in the average case is O(n^2).",
        questionAnswer: false),
    Question(
        questionText:
            "A complete graph has an edge between every pair of vertices.",
        questionAnswer: true),
    Question(
        questionText:
            "The Floyd-Warshall algorithm finds the shortest path between all pairs of vertices in a weighted graph.",
        questionAnswer: true),
    Question(
        questionText:
            "The Bellman-Ford algorithm can handle graphs with negative weight edges.",
        questionAnswer: true),
    Question(
        questionText:
            "In a binary tree, each node can have at most three children.",
        questionAnswer: false),
    Question(
        questionText:
            "The time complexity to delete an element from a max-heap is O(log n).",
        questionAnswer: true),
    Question(
        questionText:
            "A directed graph is a graph in which edges have directions.",
        questionAnswer: true),
    Question(
        questionText:
            "The time complexity of inserting an element into a binary search tree is always O(log n).",
        questionAnswer: false),
    Question(
        questionText:
            "Topological sorting is possible only in directed acyclic graphs.",
        questionAnswer: true),
    Question(
        questionText:
            "The KMP algorithm is used for pattern matching in strings.",
        questionAnswer: true),
    Question(
        questionText:
            "A hash collision occurs when two different keys hash to the same index.",
        questionAnswer: true),
    Question(
        questionText:
            "In a doubly linked list, each node has pointers to the next and previous nodes.",
        questionAnswer: true),
    Question(
        questionText:
            "The worst-case time complexity of the insertion sort algorithm is O(n log n).",
        questionAnswer: false),
    Question(
        questionText: "A perfect binary tree has all its levels fully filled.",
        questionAnswer: true),
    Question(
        questionText:
            "The time complexity of finding the shortest path in an unweighted graph using BFS is O(V + E).",
        questionAnswer: true),
    Question(
        questionText:
            "A B-tree is a self-balancing search tree that maintains sorted data.",
        questionAnswer: true),
    Question(
        questionText: "The minimum spanning tree of a graph is unique.",
        questionAnswer: false),
    Question(
        questionText:
            "In a priority queue, elements with higher priority are dequeued before elements with lower priority.",
        questionAnswer: true),
    Question(
        questionText: "A circular queue is a linear data structure.",
        questionAnswer: true),
    Question(
        questionText:
            "A self-balancing binary search tree ensures that the tree height is logarithmic.",
        questionAnswer: true),
    Question(
        questionText:
            "The Prim's algorithm can be used to find the minimum spanning tree of a graph.",
        questionAnswer: true),
    Question(
        questionText:
            "A disjoint-set data structure is used to track a set of elements partitioned into non-overlapping subsets.",
        questionAnswer: true),
    Question(
        questionText: "A binary tree with n nodes has exactly (n - 1) edges.",
        questionAnswer: true),
    Question(
        questionText:
            "The time complexity of heap sort is O(n log n) in the worst case.",
        questionAnswer: true),
    Question(
        questionText: "A directed graph is also known as a digraph.",
        questionAnswer: true),
    Question(
        questionText:
            "The Kruskal's algorithm always produces a minimum spanning tree.",
        questionAnswer: true),
    Question(
        questionText:
            "The time complexity of accessing an element in an array is O(n).",
        questionAnswer: false),
    Question(
        questionText:
            "In a binary tree, each node can have at most two children.",
        questionAnswer: true),
    Question(
        questionText: "The Boyer-Moore algorithm is used for string matching.",
        questionAnswer: true),
    Question(
        questionText: "A circular linked list has no beginning or end.",
        questionAnswer: true),
    Question(
        questionText:
            "The adjacency list representation of a graph uses less space than the adjacency matrix representation for sparse graphs.",
        questionAnswer: true),
    Question(
        questionText:
            "The time complexity of the selection sort algorithm is O(n^2) in the average case.",
        questionAnswer: true),
    Question(
        questionText:
            "A binary search tree is a special case of a binary tree.",
        questionAnswer: true),
    Question(
        questionText:
            "The Floyd-Warshall algorithm has a time complexity of O(V^3).",
        questionAnswer: true),
    Question(
        questionText:
            "A skip list is a probabilistic data structure that allows fast search within an ordered sequence of elements.",
        questionAnswer: true),
    Question(
        questionText:
            "In a max-heap, a parent node is always greater than or equal to its children.",
        questionAnswer: true),
    Question(
        questionText:
            "The time complexity of the insertion sort algorithm is O(n^2) in the worst case.",
        questionAnswer: true),
    Question(
        questionText:
            "A B+ tree is a type of self-balancing tree data structure that maintains sorted data and allows searches, sequential access, insertions, and deletions in logarithmic time.",
        questionAnswer: true),
    Question(
        questionText:
            "The space complexity of the merge sort algorithm is O(1).",
        questionAnswer: false),
    Question(
        questionText:
            "A directed acyclic graph (DAG) can be used to represent a topological order.",
        questionAnswer: true),
    Question(
        questionText:
            "The Rabin-Karp algorithm is used for pattern matching in strings.",
        questionAnswer: true),
    Question(
        questionText:
            "A hash function maps data of arbitrary size to fixed-size values.",
        questionAnswer: true),
    Question(
        questionText:
            "In a binary search tree, the right subtree of a node contains only nodes with keys greater than the node's key.",
        questionAnswer: true),
    Question(
        questionText:
            "A queue follows the Last In, First Out (LIFO) principle.",
        questionAnswer: false),
    Question(
        questionText:
            "The time complexity of searching an element in a hash table is O(n) in the average case.",
        questionAnswer: false),
    Question(
        questionText:
            "A graph can be represented using an adjacency list or an adjacency matrix.",
        questionAnswer: true),
    Question(
        questionText:
            "A self-balancing binary search tree maintains its height as O(log n).",
        questionAnswer: true),
    Question(
        questionText:
            "The time complexity of the quicksort algorithm in the best case is O(n log n).",
        questionAnswer: true),
    Question(
        questionText:
            "An AVL tree is a self-balancing binary search tree where the difference in heights of left and right subtrees cannot be more than one for all nodes.",
        questionAnswer: true),
    Question(
        questionText:
            "A strongly connected component of a directed graph is a maximal strongly connected subgraph.",
        questionAnswer: true),
    Question(
        questionText:
            "The time complexity of the depth-first search (DFS) algorithm is O(V + E).",
        questionAnswer: true),
    Question(
        questionText:
            "A min-heap is a complete binary tree where the value of each node is less than or equal to the values of its children.",
        questionAnswer: true),
    Question(
        questionText:
            "The Bellman-Ford algorithm has a time complexity of O(V^2).",
        questionAnswer: false),
    Question(
        questionText:
            "The A* search algorithm is used for pathfinding and graph traversal.",
        questionAnswer: true),
    Question(
        questionText:
            "The time complexity of the merge sort algorithm is O(n log n) in the worst case.",
        questionAnswer: true),
    Question(
        questionText:
            "A topological sort of a directed acyclic graph (DAG) is a linear ordering of vertices such that for every directed edge uv, vertex u comes before vertex v.",
        questionAnswer: true),
    Question(
        questionText:
            "The time complexity of finding the shortest path using Dijkstra's algorithm is O(V^2) with a simple array implementation.",
        questionAnswer: true),
    Question(
        questionText:
            "A double-ended queue (deque) allows insertion and deletion at both ends.",
        questionAnswer: true),
    Question(
        questionText:
            "The time complexity of the bubble sort algorithm is O(n^2) in the worst case.",
        questionAnswer: true),
    Question(
        questionText:
            "A hash table can have collisions, which are typically resolved using techniques like chaining or open addressing.",
        questionAnswer: true),
    Question(
        questionText:
            "A perfect binary tree is a binary tree in which all interior nodes have two children and all leaves have the same depth.",
        questionAnswer: true),
    Question(
        questionText:
            "In a breadth-first search (BFS), nodes are visited level by level.",
        questionAnswer: true),
    Question(
        questionText:
            "A stack can be efficiently implemented using a singly linked list.",
        questionAnswer: true),
    Question(
        questionText:
            "The time complexity of the binary search algorithm is O(n) in the worst case.",
        questionAnswer: false),
    Question(
        questionText:
            "A spanning tree of a graph can be a disconnected subgraph.",
        questionAnswer: false),
    Question(
        questionText:
            "The KMP algorithm has a time complexity of O(n + m), where n is the length of the text and m is the length of the pattern.",
        questionAnswer: true),
    Question(
        questionText:
            "A circular buffer is a data structure that uses a single, fixed-size buffer as if it were connected end-to-end.",
        questionAnswer: true),
    Question(
        questionText: "In a directed graph, edges have no direction.",
        questionAnswer: false),
    Question(
        questionText:
            "A binary tree is a tree data structure in which each node has at most two children, referred to as the left child and the right child.",
        questionAnswer: true),
    Question(
        questionText:
            "The time complexity of deleting an element from a min-heap is O(log n).",
        questionAnswer: true),
    Question(
        questionText:
            "A complete binary tree is a binary tree in which all levels, except possibly the last, are completely filled, and all nodes are as far left as possible.",
        questionAnswer: true),
    Question(
        questionText:
            "The shortest path in a weighted graph can be found using the A* algorithm.",
        questionAnswer: true),
    Question(
        questionText:
            "The time complexity of the insertion sort algorithm is O(n) in the best case.",
        questionAnswer: true),
    Question(
        questionText:
            "The Floyd-Warshall algorithm is used to find the shortest path from a single source to all other vertices in a weighted graph.",
        questionAnswer: false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
