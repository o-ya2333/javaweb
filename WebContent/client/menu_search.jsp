<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript">
/**
 * my_click和my_blur均是用于前台页面搜索框的函数
 */
//鼠标点击搜索框时执行
function my_click(obj, myid){
	//点击时，如果取得的值和搜索框默认value值相同，则将搜索框清空
	if (document.getElementById(myid).value == document.getElementById(myid).defaultValue){
	  document.getElementById(myid).value = '';
	  obj.style.color='#000';
	}
}
//鼠标不聚焦在搜索框时执行
function my_blur(obj, myid){
	//鼠标失焦时，如果搜索框没有输入值，则用搜索框的默认value值填充
	if (document.getElementById(myid).value == ''){
	 document.getElementById(myid).value = document.getElementById(myid).defaultValue;
	 obj.style.color='#999';
 }
}

/**
 * 点击搜索按钮执行的函数
 */
function search(){
	document.getElementById("searchform").submit();
}
</script>
<div id="divmenu">
		<a href="${pageContext.request.contextPath}/showProductByPage?category=糖果">糖果</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=凉果蜜饯">凉果蜜饯</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=膨化食品">膨化食品</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=肉干鱼干">肉干鱼干</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=干果">干果</a>
		<a href="${pageContext.request.contextPath}/showProductByPage?category=饮品冲剂">饮品冲剂</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=巧克力">巧克力</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=面包">面包</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=豆制品">豆制品</a>
		<a href="${pageContext.request.contextPath}/showProductByPage?category=果冻">果冻</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=网红零食">网红零食</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=水果">水果</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=饼干">饼干</a>
		<a href="${pageContext.request.contextPath}/showProductByPage?category=进口零食">进口零食</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage" style="color:#b4d76d">全部商品目录</a>		
</div>
<div id="divsearch">
<form action="${pageContext.request.contextPath }/MenuSearchServlet" id="searchform">
	<table width="100%" border="0" cellspacing="0">
		<tr>
			<td style="text-align:right; padding-right:500px">
				Search 
				<input type="text" name="textfield" class="inputtable" id="textfield" value="请输入零食名"
				onmouseover="this.focus();"
				onclick="my_click(this, 'textfield');"
				onBlur="my_blur(this, 'textfield');"/> 
				<a href="#">
					<img src="${pageContext.request.contextPath}/client/images/serchbutton.gif" border="0" style="margin-bottom:-4px" width="40" height="20" onclick="search()" /> 
				</a>
			</td>
		</tr>
	</table>
</form>
</div>