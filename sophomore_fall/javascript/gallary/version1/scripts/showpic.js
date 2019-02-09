addLoadEvent(prepareGallary);//在html加载完再执行function

/*
 * version0 的showpic函数
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
*/


//prepareGallary在html加载head时执行但此时还没有完整DOM,所以window.onload=function
function prepareGallary(){
    //browser sniff
    if(!document.getElementById)    return false;
    if(!document.getElementsByTagName)return false;
    //检查gallary是否还在
    //不至于修改html后js完蛋
    //js不应该过分依赖html
    if(!document,getElementById("imagegallary")) return false;
    var gallary=document.getElementById("imagegallary");
    var links=gallary.getElementsByTagName("a");
    for(var i of links){
        links[i].onclick=function(){
            showpic(this);
            return false;
        }
    }
}
function popUp(winURL){
    window.open(winURL,"popup","width=320,height=480");
}