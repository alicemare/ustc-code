//兼容IE6是每个前端最大的噩梦
//所以我当然不打算做这玩意
/*
 * 1. 检查document.get等方法
 * 2. abbr能否使用
*/

/* debug
 * 1. for i of abbrs 与 for(i=0;i<abbrs.len;i++)要了解js中的for of, for in
 * 2. 忘记把dd,dt节点append到dlist中当然显示不出来
 */
window.onload=displayAbbr;
function displayAbbr(){
    var abbrs=document.getElementsByTagName("abbr");
    if(abbrs.length<1)  return false;
    var defs = new Array;
    //for i of abbrs 显然不对
    for(var i=0;i<abbrs.length;i++){
        //使用key-value存储
        var key=abbrs[i].lastChild.nodeValue;
        defs[key]=abbrs[i].getAttribute("title");
        //defs[W3C]="World Wide Web consortium"
    }
    //开始根据defs创建定义表 define list
    var dlist = document.createElement("dl");
    for(key in defs){
        //对于defs关联数组的每个关键字,将其赋值给key
        var dlisttitle=document.createElement("dt");
        var titletxt=document.createTextNode(key);
        dlisttitle.appendChild(titletxt);

        var ddesc=document.createElement("dd");
        var ddtxt=document.createTextNode(defs[key]);
        ddesc.appendChild(ddtxt);

        dlist.appendChild(dlisttitle);
        dlist.appendChild(ddesc);
    }
    var header=document.createElement("h2");
    var headertxt=document.createTextNode("Abbreviaions");
    header.appendChild(headertxt);

    document.body.appendChild(header);
    document.body.appendChild(dlist);
}