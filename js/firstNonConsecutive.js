// Your task is to find the first element of an array that is not consecutive.
// E.g. If we have an array [1,2,3,4,6,7,8] 
// then 1 then 2 then 3 then 4 are all consecutive but 6 is not, so that's the first non consecutive number.
// If the whole array is consecutive then return null
// The array will always have at least 2 elements and all the elements will be numbers. The numbers will also all be unique and in ascending order.

// for (i = 0; i < cars.length; i++) { 
// return param in exampleData ? exampleData[param] : null;

function firstNonConsecutive(arr) {
  for (i = 0; i < arr.length; i++) {
    if (arr[i] === arr[arr.length - 1]) {
      return null
    } else if (arr[i] + 1 !== arr[i + 1]) {
      return arr[i + 1]
    }
  }
}

// firstNonConsecutive([1,2,3,4,6,7,8])
// firstNonConsecutive([1,2,3,4])

// function firstNonConsecutive(arr) {
//   return arr.find((val, index) => val !== index + arr[0])||null;
// }