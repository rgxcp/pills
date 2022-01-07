# Array

### [Memahami Efisiensi Algoritma & Bagaimana Array Bekerja - Fundamental Algoritma & Struktur Data #001](https://youtu.be/oQBa3MEgXcA)

#### Key Points

1. We can "illustrate" that memory in computer looks like a grid.
2. If we want to store an array with 4 elements in it, computer will reserve 4 cells in memory (in a close position).
3. Computer can't see what's the content/value of a cell in memory directly, since computer stored it in address not the value itself.
4. That's why if we want to implement searching algorithm, we need to access the value of a cell one by one ("value" == "value"?).
5. Human language is ambiguous.
6. Algorithm efficiency != time for the computer to execute/finish the algorithm.
7. Algorithm efficiency is about how much computational steps needed to execute the algorithm => time complexity.
8. Computer can access any address in memory randomly (that's why it's called Random Access Memory).
9. The reason why array (mostly) starts at 0:

   - When we initiate an array variable like this:

     ```
     array = [value1, value2, valueN]
     ```

     Computer will remember the address for the first value in that array variable, lets say "1027" (oversimplified).

   - And then we want to see the value inside the array variable at second position, the formula will look like this:

     ```
     array[1] == ???
              == address + index
              == 1027 (the address for the array variable) + 1 (the index we want to see)
              == 1028
     ```

10. Computational steps needed for read operation in array is 1.
11. Software Engineering is just layer upon layer of abstractions.
12. There's a price that we need to pay if we depends on any level of abstractions.
    - All abstractions are opinionated (different programming languages, different problem need to solve).
    - There's no guarantee that the algorithm provided by the programming languages are the effective ones.
    - ORM => there are possible cases that the the generated query isn't effective as query that we wrote manually.
    - Abstractions can be outdated. What we gonna do if the maintainers stop maintaining the project, no updates, etc.?

### [Linear Search, Binary Search, & Kompleksitas Algoritma - Fundamental Algoritma & Struktur Data #002](https://youtu.be/cxF3wnC7Nbk)

#### Key Points

1. Adding element in array at the last position is easy, we only need one step for it.
   - If it's not in the last position, lets say `last position - 1`, it means that we need to move/shift the last element first before inserting it.
2. Worst case scenario when adding element in array is when we want to insert it on the first position.
   - Notation: `N+1`.
3. Complexity level for delete operation == insert operation.
4. Linear Search
   - Straight forward one.
   - Visit each element in array one by one in linear.
5. Binary Search

   - Formula
     ```
     - Lower bound = first index of array
     - Upper bound = last index of array
     - Midpoint = (lower bound + upper bound) / 2
     - Is element in midpoint == search value? Return the midpoint index
     - Is element in midpoint < search value? Lower bound = midpoint + 1
     - Is element in midpoint > search value? Upper bound = midpoint - 1
     ```
   - Scenarios

     | Elements | Steps |
     | -------- | ----- |
     | 8        | 3     |
     | 16       | 4     |
     | 32       | 5     |
     | 64       | 6     |
     | 128      | 7     |

     TL;DR => Added one step every time the element is multiplied by two.

6. Big O notation is used to calculate how much steps that are needed for an algorithm.

   - Linear search efficiency in array with `N` elements is `N` steps.
   - Big O notation for it: `O(N)` => linear time complexity.
   - Read array: `O(1)` (only one step) => constant time complexity.
   - Binary search worst case: `O(Log N)` => log time complexity.
   - Notations cheat sheet

     | Notation      | Complexity  |
     | ------------- | ----------- |
     | O(1)          | Constant    |
     | O(Log N)      | Logarithmic |
     | O(N)          | Linear      |
     | O(N \* Log N) | Log Linear  |
     | O(N ^ 2)      | Quadratic   |
     | O(N ^ 3)      | Cubic       |
     | O(2 ^ N)      | Exponential |
     | O(N!)         | Factorial   |

   - Complexity chart

     ![Big O Complexity Chart](https://he-s3.s3.amazonaws.com/media/uploads/ece920b.png)

   - It only focus on performance changes towards changes of amount of data.
   - So `O(25)`, `O(26)`, etc. are equal to `O(1)`.
