feather.replace({
  class: 'feather',
  'stroke-width': 1,
  color: '#1d6cd7',
});

/**
 * Generates a string of unicode symbols and updates the window hash.
 * It repeats every 50ms.
 */
function loop() {
  var i, n, s = '';

  for (i = 0; i < 10; i++) {
    n = Math.floor(Math.sin(Date.now() / 200 + i / 2) * 4) + 4;
    s += String.fromCharCode(0x2581 + n);
  }

  window.location.hash = s;
  setTimeout(loop, 50);
}

loop();
