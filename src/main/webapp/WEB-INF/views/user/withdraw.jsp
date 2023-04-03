<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <%@ include file="/WEB-INF/views/include/header.jsp" %>
    <link rel="stylesheet" href="/css/user/withdraw.css"/>
</head>
<body>
<%@ include file="/WEB-INF/views/include/navbar.jsp" %>
<div class="withdraw-content">
    <h1 class="header">회원 탈퇴 안내</h1>

    <p>* 별도의 목적의 경우 고객센터로 문의해주시기 바랍니다.</p>
    <p>* 개인정보는 개인정보 처리 방침에 따라 보관합니다.</p>
    <p>* 탈퇴가 진행되면 이후에는 어떠한 복구도 할 수 없습니다.</p>

    <div class="warn-list">
        <p class="text-danger">
            * 회원 탈퇴 시 기존의 등급, 주문 내역, 쿠폰 등은 즉시 소멸됩니다.
        </p>
        <p class="text-danger">
            * 탈퇴 시 기존의 이메일, 닉네임은 본인 또는 타인 모두 재사용할 수
            없음을 알립니다.
        </p>
        <p class="text-danger">
            * 회원 탈퇴 시 기존 주문 교환/환불 처리가 불가능해집니다.
        </p>
    </div>

    <div class="user-info">
        <h4>가입 정보</h4>
        <p>이메일: <span>jinvicky@naver.com</span></p>
        <p>닉네임: <span>진진자라</span></p>
        <p>가입날짜: <span>23/01/02</span></p>
        <p>로그인타입: <span>네이버</span></p>
    </div>

    <div class="confirm-input">
        <h4>
            탈퇴 처리 진행을 원하시는 경우, 아래 입력칸에
            <b>탈퇴처리에 동의합니다</b>라고 입력해주세요
        </h4>
        <input
                id="withdraw"
                type="text"
                class="input-control"
                placeholder="탈퇴처리에 동의합니다"
        />
    </div>
    <div class="btn-container">
        <button class="cancel">취소하기</button>
        <button class="confirm">탈퇴하기</button>
    </div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<script>
    $(document).ready(function (e) {
        $(".confirm").attr("disabled", true); //ok

        let withdraw_msg = "탈퇴처리에 동의합니다";
        $("#withdraw").keyup(function (e) {
            let failed = e.target.value != withdraw_msg;
            $(".confirm").attr("disabled", failed ? true : false);
        });

        $(".confirm").click(function () {
            //send ajax
            $.ajax({
                url: "/withdraw/user",
                contentType: "application/json",
                data: {idx: 1, email: "jinvicky@naver.com"},
                type: "POST",
                dataType: "json",
                success: function (result) {
                    alert("result: ", result);
                },
            });
        });
    });
</script>
</body>
</html>
