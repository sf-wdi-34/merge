<img src="https://cloud.githubusercontent.com/assets/6520345/22489560/f791fe8a-e7cc-11e6-9a84-40c8aa1311da.png" width="60">
# Merge


### Why is this important?
<!-- framing the "why" in big-picture/real world examples -->
*This workshop is important because:*

Mergesort is a faster sorting algorithm in most cases. It has an important `merge` step that can take some time to review.

### What are the objectives?
<!-- specific/measurable goal for students to achieve -->
*After this workshop, developers will be able to:*

- describe an algorithm to merge 2 sorted arrays into one.
- write pseudocode and code for merging 2 sorted arrays.
- determine the runtime (in big-`O()` notation) for the merge.

### Where should we be now?
<!-- call out the skills that are prerequisites -->
*Before this workshop, developers should already be able to:*

- iterate through an array using a `for` loop, `forEach`, or other iterators.
- describe the purpose of big-`O()` notation.
- add elements to an array.
- compare numbers in Ruby.

## Merge?
[As usual, folk dance](https://youtu.be/XaqR3G_NVoo?t=204)

![image](https://media.giphy.com/media/1161BCev99OuRi/giphy.gif)


Here's the basic idea of the merge algorithm:

1. Start at the beginning of both lists (arrays) of items.
2. Compare the first item from each list.
3. Whichever is less, copy it to a results list.
4. Move on to the next item in the array that just gave its first element.
5. Repeat steps 1-4 until you have all the elements from both lists in the results list.


## Efficiency

In big-`O()` notation, what is the runtime of Merge? How do you know?! Justify your answer here.

Hints:
  * <details><summary>
  How many comparisons do you need to do to send one element into the results array?</summary>
  It varies. Sometimes a number gets compared to multiple other numbers.  
  </details>

  * <details><summary>
  In the worst case, how many times do you need to add an element to the results array?</summary>
  You will always need to add to the array exactly `m + n` times, if one array's size is `m` and the other is `n`.  
  </details>

  * <details><summary>
  Given the answer to the two questions above, how many comparisons did you need to make?</summary>
  Every time you made 1 comparison, you added 1 thing to the array. To get all the numbers from both arrays, you had to do this `n+m` times.  That makes this algorithm `O(n + m)`.
  </details>

  * <details><summary>
  How can you simplify this big-`O()` result?</summary>

   You can use a trick to make this simpler:

   - say the larger array's size is `n`
   - we know the smaller array size (`m`) is less than or equal to `n`
   - since big-`O()` overestimates, we can convert `O(m + n)` to `O(n + n)`
   - simplify further to get  `O(n)`
  </details>

#### But what about space?

How much space does this algorithm use, not counting the space to store the inputs?

* <details><summary>What other variables did we store?
  </summary>
  The results array is the big one! Other than that, a few temporary variables that are just single values, not arrays or lists of any kind.
  </details>

* <details><summary>How much space do those things take up in terms of `m` and `n`?
  </summary>
  The results array takes up `O(m + n)` space.  The temporary variables are just single values, not arrays or lists of any kind, so each one is usually considered constant or `O(1)` space. The number of temporary variables we use doesn't depend on the size of either input, so these all add up to `O(1)` .

  Overall, we use `O(m + n)` extra space!
  </details>


## Challenge

**Create a `merge` function that takes in two sorted arrays of numbers, uses the merge algorithm on it, and returns the combined sorted array.**

* Work with a partner to implement the algorithm on the whiteboard.
* Start with pseudocode before moving into actual code.
* Test your work with the input/output pairs listed below:

| Input | Input | Expected Output |
| :--- | :--- | :--- |
| `[0, 1, 2]` | `[3, 5, 8]` | `[0, 1, 2, 3, 5, 8]` |
| `[2, 4, 6, 7]` | `[0, 3]` | `[0, 2, 3, 4, 6, 7]` |
| `[6]` | `[4, 7, 9]`  | `[4, 6, 7, 9]` |
| `[]`  | `[]` | `[]` |

Keep in mind all the different ways you can explore your code:

**From the Command Line**:  
```ruby
ruby merge.rb # just make sure you're printing some output!
```

**In the REPL**:  
```ruby
irb
# or
pry
```

```ruby
pry > require "merge.rb"
pry > merge([],[])
```

**Using Rspec Tests**:   
```bash
rspec
# or
rspec spec/merge_spec.rb
# or, run an individual test
rspec -e "different length"
```

#### Hints:

<details><summary>  What if the arrays have different lengths?
  </summary>
    You will probably find you run out of elements to compare at some point.  If all the elements from one array have already been added to the results, what can you say about the rest of the elements left over in the other array?

     <details><summary>click to see</summary>
     - All of the rest of the elements in the input array must be greater than every element in the results array.
     - All these elements are already in sorted order.
     - We can just add the rest of the elements to the results array!
     </details>
  </details>

<br>
<details><summary> What happens if one of the elements can't be compared?
  </summary>
   You have to be able to compare! This would completely break the code, so it's a good case to test rule out inside your function.
  </details>

<!-- 
## Bonus: Partition

Like merge sort uses an extra `merge` step, another  sorting algorithm called quick sort uses a `partition` step.  -->

## Resources

* [Wikipedia](https://en.wikipedia.org/wiki/Merge_sort)
* [Graphical comparison of sorting algorithms](http://www.sorting-algorithms.com/)
* [folk dance](https://youtu.be/XaqR3G_NVoo?t=204) - at merge portion
