
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>

	$(function() {
		$("#cart").on("click", function() {
			if($("#gAmount").val() == 0){
				alert("수량을 선택하세요");
				return false;
			}
			$("form").attr("action", "loginCheck/cartAdd")
		})
		
		$("#up").on("click", function() {
			var result = $("#gAmount").val();
			result = parseInt(result) + 1;
			$("#gAmount").val(result);
		})
		
		$("#down").on("click", function() {
			var result = $("#gAmount").val();
			if( result != 1){
				result = parseInt(result) - 1;
			}
			$("#gAmount").val(result);
		})
	})

</script>
<c:if test="${!empty mesg }">
<script>
	alert("${mesg}상품을 장바구니에 담았습니다.");
</script>
</c:if>
<% session.removeAttribute("mesg"); %>
<FORM name="goodRetrieveForm" method="GET" action="#">
	    <input type="hidden" name="gImage" value="${goodsRetrieve.gImage }"> 
	    <input type="hidden" name="gCode" value="${goodsRetrieve.gCode }">
	     <input	type="hidden" name="gName" value="${goodsRetrieve.gName }"> 
	     <input	type="hidden" name="gPrice" value="${goodsRetrieve.gPrice }">

	<table width="100%" cellspacing="0" cellpadding="0">
		<tr>
			<td height="10">
		</tr>
		<tr>
			<td>
				<table align="center" width="710" cellspacing="0" cellpadding="0"
					border="0" style='margin-left: 30px'>
<!-- 					<tr>
						<td height="1" colspan="8" bgcolor="CECECE"></td>
					</tr> -->

					<tr>
						<td rowspan="14"><img src="images/items/${goodsRetrieve.gImage }.png"
							border="0" align="center" width="300" height="420"/></td>
					</tr>
					<tr>
						<td class="td_default" colspan="3">
						<h1>${goodsRetrieve.gName }</h1>
					</td>
					
					</tr>
					
					<tr>
						<td class="td_red" colspan="3" >
							<h2>${goodsRetrieve.gPrice }원</h2>
						</td>
					</tr>
					<tr>
						<td colspan="3"><hr style="border: solid 0.5px gray;"></td>
					</tr>
					<tr>
						<td class="td_title">제품코드</td>
						<td class="td_default" colspan="2" style='padding-left: 30px'>
						${goodsRetrieve.gCode }
						</td>
					</tr>
					<tr>
						<td colspan="3"><hr style="border: solid 0.5px gray;"></td>
					</tr>
					
					<tr>
						<td class="td_title">판매단위</td>
						<td class="td_default" colspan="2" style='padding-left: 30px'>
							${goodsRetrieve.gUnit }
						</td>
					</tr>

					<c:if test="${goodsRetrieve.gWeight != null}">
					<tr>
						<td class="td_title">중량/용량</td>
						<td class="td_default" colspan="2" style='padding-left: 30px'>
							${goodsRetrieve.gWeight }
						</td>
					</tr>
					</c:if>
					<tr>
						<td colspan="3"><hr style="border: solid 0.5px gray;"></td>
					</tr>
					<tr>
						<td class="td_title">배송비</td>
						<td colspan="2"><font color="#2e56a9" size="2"
							style='padding-left: 30px'><b> 무료배송</b> </font> <font size="2">(도서
								산간지역 별도 배송비 추가)</font></td>
					</tr>
					<tr>
						<td colspan="3"><hr style="border: solid 0.5px gray;"></td>
					</tr>
					

					<tr>
						<td class="td_title">주문수량</td>
						<td style="padding-left: 30px"><input type="text"
							name="gAmount" value="1" id="gAmount"
							style="text-align: right; height: 18px"> <img
							src="images/up.png" id="up"> <img src="images/down.png"
							id="down"></td>
					</tr>
					<tr>
						<td colspan="3"><hr style="border: solid 0.5px gray;"></td>
					</tr>
					<tr>
						<td colspan="3" align="center">
							<button id="cart" style="padding: 0; border: none; background: none;"> 
								<img src="images/basket_button.png" width="360" border="0">
							</button>
						</td>
					</tr>
					<tr>
						<td>
						</td>
						
					</tr>

				</table>

			</td>
		</tr>
	</table>

</FORM>
