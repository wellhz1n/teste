
function removeCharEspeciais() {
  removeCharEspecifico("nome");
  removeCharEspecifico("assunto");
  removeCharEspecifico("message");
}

function removeCharEspecifico(sttring) {
  a = '\u{100}';
  b = '\u{10FFF0}';
  re = new RegExp(`[${a}-${b}]`,'g');
  var semEspecial = document.getElementById(sttring).value;
  semEspecial = semEspecial.replace(/[^a-zA-Z]/g, '');
  document.getElementById(sttring).value = semEspecial;XRegExp("^")
}
