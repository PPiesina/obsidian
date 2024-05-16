const debounce = (cb, delay = 100) => {
  let timeout;
  return (...rest) => {
    clearTimeout(timeout);
    // eslint-disable-next-line
    timeout = setTimeout(() => {
      cb(...rest);
    }, delay);
  };
};
