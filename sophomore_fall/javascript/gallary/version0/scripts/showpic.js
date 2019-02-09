//通过onclick来触发此函数
function showpic(whichpic){//接受whichpic作为需要展示的图片对象
    //得到href
    var source = whichpic.getAttribute("href");
    var targetDescript=whichpic.getAttribute("title");
    var descrip = document.getElementById("description");
    //通过更改占位图片来实现页面内查看图片
    var placeholder = document.getElementById("placeholder");
    placeholder.setAttribute("src",source);
    descrip.firstChild.nodeValue=targetDescript;
    }

function countBodyChildren(){
    var document_body = document.getElementsByTagName("body")[0];
    //等价于document.body
    window.alert(document_body.childNodes.length);
}

//window.onload=countBodyChildren;
