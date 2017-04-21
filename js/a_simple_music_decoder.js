// inprogress = [ https://www.codewars.com/kata/a-simple-music-decoder/train/javascript ]

// // Specification
// The input signal is represented as a comma-separated string of integers and tokens (sequence descriptors). Tokens must be expanded as follows.
// number*count is expanded as number repeated count times
// first-last is expanded as a sequence of consecutive numbers starting with first and ending with last. This is true for both ascending and descending order
// first-last/interval is similarly expandad, as sequence starting with first, ending with last, where the numbers are separated by interval. Note that interval does NOT have a sign

// // Examples
// "1,3-5,7-11,14,15,17-20" is expanded to [1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20]
// "0-4/2, 5, 7-9" is expanded to [0, 2, 4, 5, 7, 8, 9]
// "0-4/2, 5, 7-5" is expanded to [0, 2, 4, 5, 7, 6, 5]
// "0-4/2, 5, 7-5, 5*4" is expanded to [0, 2, 4, 5, 7, 6, 5, 5, 5, 5, 5]

// // Input
// A string of comma-separated integers and tokens (sequence descriptors)

// // Output
// An array of integers

function uncompress(music) {
  // split on comma
  splitMusic = music.split(',')
  // iterate over array
  splitMusic.forEach(function(el, index) {
    // if item has multiplication
    if (el.toString().includes('*')) {
      // split on multiplication symbol
      splitEl = el.split('*')
      multArr = []
      for (i = 0; i < parseInt(splitEl[1]); i++) {
        // push first element into new array * by the value of the last element
        multArr.push(parseInt(splitEl[0]))
      }
      // replace the * element with the new array
      splitMusic.splice(index, 1, multArr)
    } else if (el.toString().includes('-') && el.toString().includes('/')) {
      // handle range with division
      // split on first '-'
      // create an array of numbers at interval of divisor
      // parseInt and splice into splitMusic
      splitEl = el.split(/-(.+)[/]/)
      firstInt = parseInt(splitEl[0])
      secondInt = parseInt(splitEl[1])
      thirdInt = parseInt(splitEl[2])
      pushArr = []
      // // handle direction of range
      if (firstInt < secondInt) {
        // if range is less => more
        rangeArr = Array.from(new Array((secondInt - firstInt) + 1), (x, i) => i + firstInt)
        for (i = 0; i <= rangeArr.indexOf(secondInt); i += thirdInt) {
          pushArr.push(rangeArr[i])
        }
      } else if (secondInt < firstInt) {
        // if range is more => less
        rangeArr = Array.from(new Array((firstInt - secondInt) + 1), (x, i) => i + secondInt)
        prePush = []
        for (i = 0; i < (firstInt - secondInt + 1); i += thirdInt) {
          prePush.push(rangeArr[i])
        }
        prePush = prePush.reverse()
        pushArr.push(...prePush)
      }
      splitMusic.splice(index, 1, pushArr)
    } else if (el.toString().includes('-')) {
      // handle range without division
      // create an array of numbers at interval of 1
      // parseInt and splice into splitMusic
      splitEl = el.split(/-(.+)/, 2)
      firstInt = parseInt(splitEl[0])
      secondInt = parseInt(splitEl[1])
      // handle direction of range
      if (firstInt < secondInt) {
        // if range is less => more
        rangeArr = Array.from(new Array((secondInt - firstInt) + 1), (x, i) => i + firstInt)
        splitMusic.splice(index, 1, rangeArr)
      } else if (secondInt < firstInt) {
        // if range is more => less
        rangeArr = Array.from(new Array((firstInt - secondInt) + 1), (x, i) => i + secondInt)
        splitMusic.splice(index, 1, rangeArr.reverse())
      }
    }
  })
  // iterate array
  // spread sub-arrays
  // and convert strings to integers
  finalArr = []
  splitMusic.forEach(function(el, index) {
    if (typeof el === 'string') {
      finalArr.push(parseInt(el))
    } else {
      finalArr.push(...el)
    }
  })
  return finalArr
}

// const count = (el.match(/-/g) || []).length
