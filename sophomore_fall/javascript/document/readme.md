# javascript脚本的应用

----
基本思路:用getElementByTagName来得到需要处理的元素如

1. blockquto
2. abbr
3. href
4. accesskey

然后用createElem,createTxtNode来创建一个节点并生成内容
最后用insterBefore, appendChild等插入到DOM中

**切记,你的js脚本应该只是充实文档的内容而不是通过DOM操作来直接插入核心内容**
_它们应该在你的html中_