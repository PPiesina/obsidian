function binarySearchDates(arr, n) {
  //if specific date couldnt be found, it willl return the closest index to n
  n = n.valueOf();
  let min = 0;
  let max = arr.length - 1;
  let mid = -1;
  while (min <= max) {
    mid = (min + max) >>> 1;
    const val = arr[mid].valueOf();
    if (val === n) {
      return mid;
    } else if (val < n) {
      min = mid + 1;
    } else {
      max = mid - 1;
    }
  }
  return mid;
}

binarySearchDates([], new Date(100));
binarySearchDates(
  [
    new Date(123),
    new Date(300),
    new Date(350),
    new Date(400),
    new Date(500),
    new Date(505),
    new Date(510),
    new Date(525),
    new Date(550),
    new Date(999),
  ],
  new Date(520)
);
