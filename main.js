const x = new XMLHttpRequest();
const source = "https://zeev-x.github.io/js/json/ecchi.json";
const zcr = "https://zeev-x.github.io/js/json/yor.json";
const method = "GET";

x.open(method,source,true);
x.onreadystatechange = function(){
  if(this.readyState == 4 && this.status == 200){
    var data = JSON.parse(x.responseText);
    var rand = Math.floor(Math.random()*data.length);
    var res = data[rand].img;
    var web = `<img src="${res}" height="400px">`;
    document.getElementById("result").innerHTML = web;
  }
};
x.send();