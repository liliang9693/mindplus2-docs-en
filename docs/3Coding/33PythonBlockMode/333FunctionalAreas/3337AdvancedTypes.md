# 3.3.3.7 Advanced Types

Python's advanced data types include four core container types: lists, tuples, dictionaries, and sets. These provide powerful capabilities for organizing and processing data in program development. Each type has its own unique characteristics and use cases, enabling it to meet a variety of programming needs.

![image](./3337AdvancedTypes.assets/pic_1781078018797.png)

| Advanced Types | Note                                                                                                                                                                                         | Features                                                                                                                                                                                                                                                                                                                               |
| -------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| List           | Lists are one of the most commonly used data structures in Python and are denoted by square brackets [ ]. They are ordered, mutable collections of elements that can store data of any type. | 1. Elements are stored in the order they are inserted, and each element has a corresponding index.<br />2. Supports dynamic insertion, deletion, and modification operations. <br />3. Can contain mixed data types (numbers, strings, and even other lists).<br /> 4. Supports slicing operations, making it easy to extract subsets. |
| Tuple          | Tuples are created using parentheses ( ) and are an ordered but immutable data structure. Once created, their contents cannot be modified.                                                   | 1. Elements are arranged in a specific order and can be accessed by index.<br />2. Immutability ensures data integrity and prevents accidental modifications. <br />3. They are more memory-efficient than lists and offer faster access speeds. <br />4. They support tuple unpacking, which facilitates multi-variable assignment.  |
| Dictionary     | A dictionary is created using curly braces { } and stores data in the form of key-value pairs. It provides fast key-based lookup capabilities.                                               | 1. Key-value pair structure; keys must be immutable types.<br />2. Values are accessed directly via keys, resulting in extremely high lookup efficiency. <br />3. Supports dynamic addition, deletion, and modification of key-value pairs.                                                                                            |
| Set            | Sets are created using curly braces { } or the set() function and store unique elements in an unordered collection. They are specifically designed to handle sets of unique data.            | 1. Automatically removes duplicate elements.<br />2. Elements are stored in an unordered manner; indexed access is not supported. <br />3. Supports mathematical set operations (union, intersection, difference, etc.). <br />4. Elements must be immutable types.                                                                    |

## List

| Blocks                                                                                                                                | Note                                                                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ![image](./3337AdvancedTypes.assets/pic_1781078481046.png) | Assigning a list to a variable is equivalent to naming the list.                                                                                                                          |
| ![image](./3337AdvancedTypes.assets/pic_1781078504325.png) | Initialization list.                                                                                                                                                                      |
| ![image](./3337AdvancedTypes.assets/pic_1781078511429.png) | Clear the data from the list.                                                                                                                                                             |
| ![image](./3337AdvancedTypes.assets/pic_1781078519811.png) | Get the length of the list.                                                                                                                                                               |
| ![image](./3337AdvancedTypes.assets/pic_1781078528995.png) | Determine whether the list is empty.                                                                                                                                                      |
| ![image](./3337AdvancedTypes.assets/pic_1781078535676.png) | Use the separator "," to join the elements in a list. For example, if the list contains ["a", "b", "c"], combining them with the separator ";" results in: a;b;c                          |
| ![image](./3337AdvancedTypes.assets/pic_1781078543613.png) | Connect text characters into a list using the delimiter ",". For example: If the contents of the list are [a-b-c], using the delimiter "-" to create the list results in: ["a", "b", "c"] |
| ![image](./3337AdvancedTypes.assets/pic_1781078558950.png) | Use an index to access values in the list; the first element of the list has an index of 0.                                                                                               |
| ![image](./3337AdvancedTypes.assets/pic_1781078565543.png) | Retrieve a specific element in a list by its index; you can retrieve it in ascending or descending order.                                                                   |
| ![image](./3337AdvancedTypes.assets/pic_1781078577423.png) | Insert an element into the list at a specified position using an index.                                                                                                                   |
| ![image](./3337AdvancedTypes.assets/pic_1781078586478.png) | Modify the value at a specified position in the list using an index.                                                                                                                      |
| ![image](./3337AdvancedTypes.assets/pic_1781078602910.png) | Delete the corresponding element from the list using its index.                                                                                                                           |
| ![image](./3337AdvancedTypes.assets/pic_1781078612723.png) | Add the element to the end of the list.                                                                                                                                                   |
| ![image](./3337AdvancedTypes.assets/pic_1781078620102.png) | Concatenate the two lists into a single list.                                                                                                                                             |
| ![image](./3337AdvancedTypes.assets/pic_1781078629213.png) | Convert the tuple to a list.                                                                                                                                                              |
| ![image](./3337AdvancedTypes.assets/pic_1781078637044.png) | Given the content of an element, find its corresponding index.                                                                                                                            |
| ![image](./3337AdvancedTypes.assets/pic_1781078644390.png) | Sort the elements in the list in ascending or descending order. Sorting options: numeric, alphabetical, or case-insensitive.                                                              |
| ![image](./3337AdvancedTypes.assets/pic_1781078653364.png) | Check whether a specific element is present in the list.                                                                                                                                  |

## Tuple

| Blocks                                                                                                                                | Note                                                                                          |
| ------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| ![image](./3337AdvancedTypes.assets/pic_1781078897342.png) | Assigning a tuple to a variable is equivalent to naming the tuple.                            |
| ![image](./3337AdvancedTypes.assets/pic_1781078903126.png) | Initialize the tuple.                                                                         |
| ![image](./3337AdvancedTypes.assets/pic_1781078909897.png) | Get the minimum, maximum, or length of a tuple.                                               |
| ![image](./3337AdvancedTypes.assets/pic_1781078917628.png) | Determine whether a tuple contains a specific character.                                      |
| ![image](./3337AdvancedTypes.assets/pic_1781078925198.png) | Use an index to retrieve values from a tuple.                                                 |
| ![image](./3337AdvancedTypes.assets/pic_1781078931918.png) | Retrieve a specific range of elements from the tuple by specifying the start and end indices. |
| ![image](./3337AdvancedTypes.assets/pic_1781078936902.png) | Convert the list to a tuple.                                                                  |

## Dictionary

| Blocks                                                                                                                                | Note                                                                              |
| ------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| ![image](./3337AdvancedTypes.assets/pic_1781079121865.png) | Assigning a dictionary to a variable is equivalent to naming the dictionary.      |
| ![image](./3337AdvancedTypes.assets/pic_1781079129717.png) | Initialize the dictionary.                                                        |
| ![image](./3337AdvancedTypes.assets/pic_1781079136107.png) | Get the value of a dictionary key.                                                |
| ![image](./3337AdvancedTypes.assets/pic_1781079142771.png) | Modify the value of a dictionary key.                                             |
| ![image](./3337AdvancedTypes.assets/pic_1781079149315.png) | When you delete a key from a dictionary, the corresponding value is also removed. |
| ![image](./3337AdvancedTypes.assets/pic_1781079156181.png) | Clear the dictionary.                                                             |
| ![image](./3337AdvancedTypes.assets/pic_1781079162181.png) | Determine whether a specific key is present in the dictionary.                    |
| ![image](./3337AdvancedTypes.assets/pic_1781079169549.png) | Get the length of the dictionary.                                                 |
| ![image](./3337AdvancedTypes.assets/pic_1781079175044.png) | Returns a list containing all the keys or values in the dictionary.               |

## Set

| Blocks                                                                                                                                | Note                                                                         |
| ------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| ![image](./3337AdvancedTypes.assets/pic_1781079469145.png) | Assigning a collection to a variable is equivalent to naming the collection. |
| ![image](./3337AdvancedTypes.assets/pic_1781079475283.png) | Initialize the set.                                                          |
| ![image](./3337AdvancedTypes.assets/pic_1781079484406.png) | Initialize an empty set.                                                     |
| ![image](./3337AdvancedTypes.assets/pic_1781079493372.png) | For elements in two sets, find their intersection, union, or difference.     |
| ![image](./3337AdvancedTypes.assets/pic_1781079499341.png) | Remove the command content from the collection.                              |
| ![image](./3337AdvancedTypes.assets/pic_1781079504827.png) | Clear the set.                                                               |
| ![image](./3337AdvancedTypes.assets/pic_1781079511133.png) | Copy the set.                                                                |
| ![image](./3337AdvancedTypes.assets/pic_1781079518229.png) | Determine whether the input value is in the set.                             |
| ![image](./3337AdvancedTypes.assets/pic_1781079530837.png) | Add an iterable object to the collection.                                    |
| ![image](./3337AdvancedTypes.assets/pic_1781079538707.png) | Add a single element to the set.                                             |
| ![image](./3337AdvancedTypes.assets/pic_1781079546172.png) | Determine whether one set is a subset or a superset of another set.          |
| ![image](./3337AdvancedTypes.assets/pic_1781079557644.png) | Find the intersection, union, and difference of two sets.                    |
| ![image](./3337AdvancedTypes.assets/pic_1781079566053.png) | Get the length of the collection.                                            |
| ![image](./3337AdvancedTypes.assets/pic_1781079572509.png) | Return a random item and remove it from the set.                             |
