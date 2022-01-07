# Array

## [Memahami Efisiensi Algoritma & Bagaimana Array Bekerja - Fundamental Algoritma & Struktur Data #001](https://youtu.be/oQBa3MEgXcA)

### Key Points

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
