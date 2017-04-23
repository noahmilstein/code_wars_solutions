// Your task is take arrays of numbers and compress them into ranges.
// The numbers in the array are mostly consecutive. 
// If you convert them as ranges, it will save a lot of space. 
// You should write a function that will convert an array of numbers into a string. 
// A range, or series of consecutive numbers, will be represented as two numbers separated by an underscore.
// A range of one just by the number its self and multiple ranges separated by commas.
// For example, The numbers 5, 6, 7, 8 and 9 would be displayed as "5_9" 
// The number 6 would just be "6" 
// The numbers 3,4,5,6,9 would be "3_6,9"
// Using the above system, you should write two functions: 
// toRange - convert an array of numbers to a range string 
// toArray - convert a range string back to an array
// Warnings
// The numbers could arrive all jumbled up so you'll need to sort them. 
// Sometimes the same number may appear more than once, duplicates should be discarded.

function toArray(str) {
  console.log('toArray', str)
  let answer = []
  if (str.length > 0) {
    const splitArr = str.split(',')
    splitArr.forEach(el => {
      if (el.includes('_')) {
        splitEl = el.split(/_/)
        firstInt = parseInt(splitEl[0])
        secondInt = parseInt(splitEl[1])
        rangeArr = Array.from(new Array((secondInt - firstInt) + 1), (x, i) => i + firstInt)
        answer.push(...rangeArr)
      } else {
        answer.push(parseInt(el))
      }
    })
  }
  return [...new Set(answer)].sort((a, b) => a - b)
}

function toRange(arr) {
  console.log('toRange', arr)
  const newArr = [...new Set(arr)].sort((a, b) => a - b).map(x => { return parseInt(x) })
  let str
  arr.length === 0 ? str = '' : str = newArr[0].toString()  
  if (arr.length === 0 || arr.length === 1) {
    return str
  } else if (arr.length > 1) {
    for (i = 1; i < newArr.length; i++) {
      const thisInSequence = (newArr[i] - 1) === newArr[i - 1]
      const endOfArray = newArr[i] === newArr[newArr.length - 1]
      const nextInSequence = newArr[i + 1] === (newArr[i] + 1)

      if (thisInSequence && !endOfArray && nextInSequence) {
        continue
      } else if (thisInSequence && (endOfArray || !nextInSequence)) {
        str += `_${newArr[i]}`
      } else {
        str += `,${newArr[i]}`
      }
    }
  }
  return str
}

// function toRange(arr) {
//   console.log('toRange', arr)
//   const newArr = [...new Set(arr)].sort((a, b) => a - b).map(x => { return parseInt(x) })
//   let str
//   arr.length === 0 ? str = '' : str = newArr[0].toString()  
//   if (arr.length === 0 || arr.length === 1) {
//     return str
//   } else if (arr.length > 1) {
//     for (i = 1; i < newArr.length; i++) {
//       if ((newArr[i] - 1) === newArr[i - 1] && newArr[i] !== newArr[newArr.length - 1] && newArr[i + 1] === (newArr[i] + 1)) {
//         // this in sequence
//         // not end of array 
//         // next in sequence
//         continue
//       } else if ((newArr[i] - 1) === newArr[i - 1] && newArr[i] === newArr[newArr.length - 1]) {
//         // this in sequence 
//         // end of array
//         str += `_${newArr[i]}`
//       } else if ((newArr[i] - 1) === newArr[i - 1] && newArr[i + 1] !== (newArr[i] + 1)) {
//         // this in sequence 
//         // next not in sequence
//         str += `_${newArr[i]}`
//       } else if ((newArr[i] - 1) !== newArr[i - 1] && newArr[i] !== newArr[newArr.length - 1] && newArr[i + 1] !== (newArr[i] + 1)) {
//         // this not in sequence 
//         // not end of array
//         // next not in sequence
//         str += `,${newArr[i]}`
//       } else if ((newArr[i] - 1) !== newArr[i - 1] && newArr[i] !== newArr[newArr.length - 1] && newArr[i + 1] === (newArr[i] + 1)) {
//         // this not in sequence 
//         // not end of array
//         // next in sequence
//         str += `,${newArr[i]}`
//       } else if ((newArr[i] - 1) !== newArr[i - 1] && newArr[i] === newArr[newArr.length - 1]) {
//         // this not in sequence 
//         // end of array
//         str += `,${newArr[i]}`
//       }
//     }
//   }
//   return str
// }

// function toRange(arr) {
//   arr=Array.from(new Set(arr)).sort((a,b)=>a-b)
//   for(var i=0,r=[];i<arr.length;){
//     var s=i
//     while(i<arr.length&&arr[i]+1==arr[i+1]) i++
//     r.push(i==s?arr[i++]:arr[s]+"_"+arr[i++])
//   }
//   return r.join(",")
// }
// function toArray(str) {
//   for(var arr=str.split(","),i=0,r=[];str!=""&&i<arr.length;i++){
//     var [a,b]=(arr[i]+"_"+arr[i]).split("_")
//     for(var j=+a;j<=+b;j++) r.push(j)
//   }
//   return r
// }
// 
// function toRange(ar){
//   const funkDoc = ([a,b]) => a === b ? a : `${a}_${b}`;
//   let ix = [...new Set(ar)].map(e => Number(e)).sort((a,b) => a - b),
//     decree = [];
//   let codex = ix.slice(1).reduce((a,e) => e === a[1] + 1 ? (a[1]++,a) : (decree.push(funkDoc(a)),[e,e]), [ix[0],ix[0]]);
//   return decree.concat(funkDoc(codex)).join(',');
// }
// function toArray(s){
//   const funkDoc = x => {
//     let [a,b] = x.split('_').map(e => Number(e));
//     return Array.from({length:b-a+1}, (_,i) => a + i)};
//   return s ? s.split(',').reduce((a,e) => a.concat(e.includes('_') ? funkDoc(e) : Number(e)),[]) : [];
// }