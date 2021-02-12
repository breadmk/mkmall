<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../mk/aside.jsp"%>
<style>
 div.goods div.goodsImg { float:left; width:350px; margin-top: 30px;}
 div.goods div.goodsImg img { width:350px; height:auto; }
 
 div.goods div.goodsInfo { float:right; width:330px; font-size:22px; margin-top: 30px;}
 div.goods div.goodsInfo p { margin:0 0 20px 0; }
 div.goods div.goodsInfo p span { display:inline-block; width:100px; margin-right:15px; }
 
 div.goods div.goodsInfo p.cartStock input { font-size:22px; width:50px; padding:5px; margin:0; border:1px solid #eee; }
 div.goods div.goodsInfo p.cartStock button { font-size:26px; border:none; background:none; }
 div.goods div.goodsInfo p.addToCart { text-align:right; }
 div.goods div.gdsDes { font-size:18px; clear:both; padding-top:30px; }
</style>

 <script>
 $(function(){
  $(".plus").click(function(){
   var num = $(".numBox").val();
   var plusNum = Number(num) + 1;
   
   if(plusNum >= ${gv.gdsStock}) {
    $(".numBox").val(num);
   } else {
    $(".numBox").val(plusNum);          
   }
   
  });
  
  $(".minus").click(function(){
   var num = $(".numBox").val();
   var minusNum = Number(num) - 1;
   
   if(minusNum <= 0) {
    $(".numBox").val(num);
   } else {
    $(".numBox").val(minusNum);          
   }
  });
 });
 </script>

<div class="container">
	<form role="form" method="post">
 <input type="hidden" name="gdsNum" value="${gv.gdsNum}" />
</form>

<div class="goods">
 <div class="goodsImg">
  <img src="${gv.gdsImg}">
 </div>
 
 <div class="goodsInfo">
  <p class="gdsName"><span>상품명</span>${gv.gdsName}</p>
  
  <p class="cateName"><span>카테고리</span>${gv.cateName}</p>
  
  <p class="gdsPrice">
   <span>가격 </span><fmt:formatNumber pattern="###,###,###" value="${gv.gdsPrice}" /> 원
  </p>
  
  <p class="gdsStock">
   <span>재고 </span><fmt:formatNumber pattern="###,###,###" value="${gv.gdsStock}" /> EA
  </p>
  
<p class="cartStock">
 <span>구입 수량</span>
 <button type="button" class="plus">+</button>
 <input type="number" class="numBox" min="1" max="${gv.gdsStock}" value="1" readonly="readonly"/>
 <button type="button" class="minus">-</button>
  </p>
  
  <p class="addToCart">
   <button type="button">카트에 담기</button>
  </p>
 </div>
 
 <div class="gdsDes">${gv.gdsDes}</div>
</div>
</div>