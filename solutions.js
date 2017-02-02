// merge two sorted arrays
// parameters are left, a sorted array
// and right, a sorted array
// all elements from both arrays must be comparable

function merge(left, right) {
  var result = [];

  // while both arrays have elements in them, zip them together
  while (left.length && right.length) {
    // if the left array first element is less than the right array first element, push to result
    if (left[0] <= right[0]) {
        result.push(left.shift());
    // else push the right array first element to result
    } else {
        result.push(right.shift());
    }
  }

  // if left is the only array with elements, push them all in
  while (left.length) {
      result.push(left.shift());
  // if right is the only array with elements, push them all in
  }
  while (right.length) {
    result.push(right.shift());
  }
  // return final result
  return result;
}
