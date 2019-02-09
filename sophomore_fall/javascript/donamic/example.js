/*
//1. innerHTML方法来改变一个元素节点的innerHTML属性
window.onload=function(){
    var testdiv=document.getElementById("testdiv");
    testdiv.innerHTML="<p>haha</p>";
}
*/

//2. 通过DOM提供的接口来创建DOM节点元素和改变DOM树
window.onload=function(){
    //创建好的<p>元素有name和Type两个属性
    var para=document.createElement("p");
    var info="nodeName:";
    var txt=document.createTextNode("Hello world");
    para.appendChild(txt);
    info+=para.nodeName;//Pnode
    info+="nodeType:";
    info+=para.nodeType;//1 元素类型
    alert(info);
    document.getElementById("testdiv").appendChild(para);

}