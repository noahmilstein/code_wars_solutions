// Description:
// Given two array of integers(arr1,arr2).
// Your task is going to find a pair of numbers(an element in arr1, and another element in arr2),
// their difference is as big as possible(absolute value);
// Again, you should to find a pair of numbers, their difference is as small as possible.
// Return the maximum and minimum difference values by an array: [ max difference, min difference ]

// For example:
// Given arr1 = [3,10,5], arr2 = [20,7,15,8]
// should return [17,2] because 20 - 3 = 17, 10 - 8 = 2

// Note:
// arr1 and arr2 contains only integers(positive, negative or 0);
// arr1 and arr2 may have different lengths, they always has at least one element;
// All inputs are valid.
// This is a simple version, if you want some challenges, try the challenge version.
// Some Examples

function maxAndMin(arr1, arr2) {
  let shortest
  let longest
  arr1.length < arr2.length ? shortest = arr1 : shortest = arr2
  shortest === arr1 ? longest = arr2 : longest = arr1

  let max = 0
  let min = Math.abs(shortest[0] - longest[0])
  for (s = 0; s < shortest.length; s++) {
    for (l = 0; l < longest.length; l++) {
      if (Math.abs(shortest[s] - longest[l]) > max) {
        max = Math.abs(shortest[s] - longest[l])
      }
      if (Math.abs(shortest[s] - longest[l]) < min) {
        min = Math.abs(shortest[s] - longest[l])
      }
    }
  }
  return [max, min]
}

// function maxAndMin(arr1,arr2){
//   return arr1.reduce((acc, curr) => {
//     arr2.forEach(num => {
//       const newNum = Math.abs(num - curr)
//       if (newNum > acc[0]) acc[0] = newNum
//       if (newNum < acc[1]) acc[1] = newNum
//     })
//     return acc
//   }, [-Infinity, Infinity])
// }
