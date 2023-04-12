<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <%@ include file="/WEB-INF/views/include/header.jsp" %>
    <link rel="stylesheet" href="/css/radioBtn.css"/>
    <link rel="stylesheet" href="/css/user/signupForm.css"/>
    <link rel="stylesheet" href="/css/upload.css"/>
</head>
<body>
<%@ include file="/WEB-INF/views/include/navbar.jsp" %>
<div class="register-page">
    <div class="reg-page-center">
        <div class="reg-header">판매자가입</div>
        <div class="section-line"></div>
        <div class="reg-form-box">
            <form id="seller_register" class="reg-form" action="/seller/register" method="post">
                <div class="center-padding">
                    <div class="input-line">
                        <div class="input-label">
                            <label for="email">이메일<span>*</span></label>
                        </div>
                        <div class="input-box">
                            <div class="input">
                                <input
                                        id="email"
                                        name="email"
                                        type="text"
                                        placeholder="이메일을 입력해 주세요"
                                />
                            </div>
                            <div class="error-msg email"></div>
                        </div>
                        <div class="btn-space">
                            <button id="email_duplicate_chk">
                                중복확인
                            </button>
                        </div>
                    </div>
                    <div class="input-line">
                        <div class="input-label">
                            <label for="cpnm">상호명(브랜드명)<span>*</span></label>
                        </div>
                        <div class="input-box">
                            <div class="input">
                                <input
                                        name="cpnm"
                                        id="cpnm"
                                        type="text"
                                        placeholder="브랜드명을 입력해 주세요"
                                />
                            </div>
                            <div class="error-msg cpnm"></div>
                        </div>
                        <div class="btn-space">
                            <button id="cpnm_duplicate_chk">중복확인</button>
                        </div>
                    </div>
                    <div class="input-line">
                        <div class="input-label">
                            <label for="repr_nm">대표 이름<span>*</span></label>
                        </div>
                        <div class="input-box">
                            <div class="input">
                                <input
                                        name="repr_nm"
                                        id="repr_nm"
                                        type="text"
                                        placeholder="대표자 이름을 입력해 주세요"
                                />
                            </div>
                            <div class="error-msg cpnm"></div>
                        </div>
                        <div class="btn-space">
                        </div>
                    </div>
                    <div class="input-line">
                        <div class="input-label">
                            <label for="pwd">비밀번호<span>*</span></label>
                        </div>
                        <div class="input-box">
                            <div class="input">
                                <input
                                        name="pwd"
                                        id="pwd"
                                        type="password"
                                        placeholder="비밀번호를 입력해주세요"
                                />
                                <input type="checkbox" id="show_pwd" hidden/>
                                <label id="show_pwd_toggle" class="show-pwd" for="show_pwd">
                                    <i id="eye" class="fa-regular fa-eye-slash"></i>
                                </label>
                            </div>
                            <div class="error-msg pwd"></div>
                        </div>
                        <div class="btn-space"></div>
                    </div>
                    <div class="input-line">
                        <div class="input-label">
                            <label for="pwd_confirm">비밀번호 확인<span>*</span></label>
                        </div>
                        <div class="input-box">
                            <div class="input">
                                <input
                                        id="pwd_confirm"
                                        type="password"
                                        placeholder="비밀번호를 한번 더 입력해주세요"
                                />
                                <input type="checkbox" id="show_pwd_confirm" hidden/>
                                <label
                                        id="show_pwd_confirm_toggle"
                                        class="show-pwd"
                                        for="show_pwd_confirm"
                                >
                                    <i id="eye2" class="fa-regular fa-eye-slash"></i>
                                </label>
                            </div>
                            <div class="error-msg pwd-confirm"></div>
                        </div>
                        <div class="btn-space"></div>
                    </div>
                    <div class="input-line">
                        <div class="input-label">
                            <label for="mpno">휴대전화<span>*</span></label>
                        </div>
                        <div class="input-box">
                            <div class="input">
                                <input
                                        name="mpno"
                                        id="mpno"
                                        type="text"
                                        placeholder="-제외 숫자만 입력해 주세요"
                                />
                            </div>
                            <div class="error-msg mpno"></div>
                        </div>
                        <div class="btn-space">
                            <button id="mpno_chk">인증</button>
                        </div>
                    </div>
                    <h3 class="section-header">사업자 기본 정보</h3>
                    <div class="input-line">
                        <div class="input-label">
                            <label>사업유형<span>*</span></label>
                        </div>
                        <fieldset>
                            <label>
                                <input type="radio" name="biz_type" value="1" checked/>
                                <span>개인사업자</span>
                            </label>

                            <label>
                                <input type="radio" name="biz_type" value="2"/>
                                <span>법인사업자</span>
                            </label>
                        </fieldset>
                    </div>
                    <div class="input-line">
                        <div class="input-label">
                            <label for="brno">사업자번호<span>*</span></label>
                        </div>
                        <div class="input-box">
                            <div class="input">
                                <input
                                        name="brno"
                                        id="brno"
                                        type="text"
                                        placeholder="-제외 숫자만 입력해 주세요"
                                />
                            </div>
                            <div class="error-msg brno"></div>
                        </div>
                        <div class="btn-space">
                            <button id="brno_chk">인증</button>
                        </div>
                    </div>
                    <div class="input-line">
                        <div class="input-label">
                            <label for="sle_biz_no">통신판매업신고번호<span>*</span></label>
                        </div>
                        <div class="input-box">
                            <div class="input">
                                <input
                                        name="sle_biz_no"
                                        id="sle_biz_no"
                                        type="text"
                                        placeholder="통신판매업신고번호를 입력해 주세요"
                                />
                            </div>
                            <div class="error-msg sle-biz-no"></div>
                        </div>
                        <div class="btn-space">
                        </div>
                    </div>
                    <div class="input-line">
                        <div class="input-label">
                            <label>사업지 주소<span>*</span></label>
                        </div>
                        <div class="input-box">
                            <input name="bsplc_zpcd" id="bsplc_zpcd" hidden/>
                            <div class="input">
                                <input
                                        name="bsplc_base"
                                        id="bsplc_base"
                                        type="text"
                                        placeholder="주소를 검색해주세요"
                                />
                            </div>
                            <div class="input addr-dtl">
                                <input
                                        name="bsplc_dtl"
                                        id="bsplc_dtl"
                                        type="text"
                                        placeholder="상세 주소를 입력해주세요"
                                />
                            </div>
                            <div class="error-msg bsplc-dtl"></div>
                        </div>
                        <div class="btn-space">
                            <button id="addr-search">
                                <i class="fa-solid fa-magnifying-glass"></i>
                                검색
                            </button>
                        </div>
                    </div>
                    <h3 class="section-header">브랜드 기본 정보</h3>
                    <div class="input-line">
                        <div class="input-label">
                            <label for="repr_telno">브랜드 공식 연락처<span>*</span></label>
                        </div>
                        <div class="input-box">
                            <div class="input">
                                <input
                                        name="repr_telno"
                                        id="repr_telno"
                                        type="text"
                                        placeholder="-제외 숫자만 입력해주세요"
                                />
                            </div>
                            <div class="error-msg bsplc-dtl"></div>
                        </div>
                        <div class="btn-space">
                        </div>
                    </div>
                    <div class="input-line">
                        <div class="input-label">
                            <label>브랜드 설명<span>*</span></label>
                        </div>
                        <div class="input-box">
                            <div class="input">
                                <input
                                        name="brnd_cn"
                                        id="brnd_cn"
                                        type="text"
                                        placeholder="브랜드 내용을 입력해주세요"
                                />
                            </div>
                            <div class="error-msg brnd-cn"></div>
                        </div>
                        <div class="btn-space">
                        </div>
                    </div>
                    <div class="input-line">
                        <div class="input-label">
                            <label>브랜드 배너이미지</label>
                        </div>
                        <div class="input-box">
                            <div class="input">
                                <label class="upload-label" for="upload_bnr">브랜드 이미지 선택 <img src="/img/upload_dir.png"></label>
                                <div class="upload-input bnr">
                                    <input type="file" name="upload_bnr" id="upload_bnr">
                                </div>
                            </div>
                        </div>
                        <div class="btn-space">
                            <button id="bnr_upload_btn">업로드</button>
                        </div>
                    </div>
                    <div class="upload-result bnr">
                        <ul>

                        </ul>
                    </div>
                    <div class="input-line">
                        <div class="input-label">
                            <label>브랜드 프로필</label>
                        </div>
                        <div class="input-box">
                            <div class="input">
                                <label class="upload-label" for="upload_profile">프로필 이미지 선택 <img
                                        src="/img/upload_dir.png"></label>
                                <div class="upload-input profile">
                                    <input type="file" name="upload_profile" id="upload_profile">
                                </div>
                            </div>
                        </div>
                        <div class="btn-space">
                            <button id="profile_upload_btn">업로드</button>
                        </div>
                    </div>
                    <div class="upload-result profile">
                        <ul>

                        </ul>
                    </div>
                    <%--       동의 여부 --%>
                    <div class="section-line bottom"></div>
                    <div class="checkbox-group">
                        <label for="check-all" class="input-line">
                            <input
                                    type="checkbox"
                                    name="checkall"
                                    id="check-all"
                                    hidden
                            />
                            <img
                                    class="agree-checkbox"
                                    src="/img/unchecked.png"
                                    width="20"
                                    height="20"
                            />
                            <span>모두 동의합니다.</span>
                        </label>
                        <div class="chk-group-line">
                            <label for="check_1" class="input-line">
                                <input type="checkbox" id="check_1" class="normal" hidden/>
                                <img
                                        class="agree-checkbox"
                                        src="/img/unchecked.png"
                                        width="20"
                                        height="20"
                                />
                                <span>만 14세 이상입니다 (필수)</span>
                            </label>
                            <label for="check_2" class="input-line">
                                <input type="checkbox" name="seler_agre_yn" value="Y" id="check_2" class="normal"
                                       hidden/>
                                <img
                                        class="agree-checkbox"
                                        src="/img/unchecked.png"
                                        width="20"
                                        height="20"
                                />
                                <span>판매자 이용약관 동의 (필수)</span>
                            </label>
                            <label for="check_3" class="input-line">
                                <input type="checkbox" id="check_3" class="normal" name="user_agre_yn" hidden
                                       value="Y"/>
                                <img
                                        class="agree-checkbox"
                                        src="/img/unchecked.png"
                                        width="20"
                                        height="20"
                                />
                                <span>개인정보 수집 및 이용 동의 (필수)</span>
                            </label>
                        </div>
                    </div>
                    <div class="btn-container">
                        <button class="reg-confirm">가입하기</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<%@ include file="/WEB-INF/views/include/script.jsp" %>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/js/member/regEx.js"></script>
<script src="/js/member/msg.js"></script>
<script src="/js/member/common.js"></script>
<script src="/js/upload/common.js"></script>
<script>
    //파일 분리 허용X. val() 때문에
    let addressCallback = (e) => {
        e.preventDefault(); //405 이슈 해결.

        new daum.Postcode({
            oncomplete: function (data) {
                let addr = "";
                let extraAddr = ""; //참고항목

                if (data.userSelectedType === "R") {
                    addr = data.roadAddress;

                    if (data.bname !== "" && /[동|로|가]$/g.test(data.bname))
                        extraAddr += data.bname;
                } else addr = data.jibunAddress;

                if (data.buildingName !== "" && data.apartment === "Y") {
                    extraAddr +=
                        extraAddr !== "" ? ", " + data.buildingName : data.buildingName;
                }

                if (extraAddr !== "") extraAddr = " (" + extraAddr + ")";

                $("#bsplc_zpcd").val(data.zonecode);
                $("#bsplc_base").val(data.address);
                $("#bsplc_dtl").focus(); //상세주소에 focus
            },
        }).open();
    };

    $(document).ready(function () {

        //사업자 인증
        $("#brno_chk").click(function (e) {
            e.preventDefault();

            let brno_ref = $("#brno");
            if (!validateBrnoAlert(brno_ref)) return false;

            let brno = {
                b_no: [$("#brno").val()] //-제외 숫자만 입력할 것. 그렇지 않으면 잘못된 조회결과 발생
            };

            let serviceKey = "5RrGC%2BYxMLKxHrcaSzs46HaxE7ye2QKnjkO%2F4uATqcBp9fzXBmyqAqEDY1GFkwqWj4lUxEA8R8nskdqUCJhohQ%3D%3D";
            $.ajax({
                url:
                    "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=" +
                    serviceKey,
                type: "POST",
                data: JSON.stringify(brno),
                dataType: "JSON",
                contentType: "application/json",
                accept: "application/json",
                success: function (result) {
                    let biz_state= result.data[0].b_stt_cd;

                    if (biz_state == "") {
                        alert("국세청에 등록되지 않은 사업자 번호입니다.");
                    } else if (biz_state != 1) { //계속사업자가 아님
                        alert("휴/폐업 사업자 번호입니다. 다른 번호를 입력해 주세요");
                    } else {
                        alert("사용가능한 사업자 번호입니다.");
                        $("#brno_chk").attr("disabled", true);
                        $("#brno").attr("readonly", true);
                    }
                },
                error: function (error) {
                    console.log("오류가 발생했습니다. 다시 시도해 주세요");
                },
            });
        });

        $("#addr-search").click(function (e) {
            addressCallback(e);
        });

        $(".checkbox-group").on("click", "#check-all", function () {
            let is_checked = $(this).is(":checked");

            $(this)
                .parents(".checkbox-group")
                .find("input")
                .prop("checked", is_checked);

            // 체크박스 이미지 전부 변경
            $(".agree-checkbox").attr(
                "src",
                imgUrl(is_checked)
            );
        });

        $(".checkbox-group").on("click", ".normal", function () {
            var is_checked = true;

            $(".checkbox-group .normal").each(function () {
                is_checked = is_checked && $(this).is(":checked");
            });

            $("#check-all").prop("checked", is_checked);
            $(".agree-checkbox").attr(
                "src",
                imgUrl(is_checked)
            );

            $(".normal").each(function () {
                $(this)
                    .next("img")
                    .attr(
                        "src",
                        imgUrl($(this).is(":checked"))
                    );
            });
        });

        //file upload
        let clone_bnr = $(".upload-input.bnr").clone();
        let clone_profile = $(".upload-input.profile").clone();

        //.uploadResult ul의 참조를 얻어온다.
        let bnr_upload_list = $(".upload-result.bnr ul");
        var profile_upload_list = $(".upload-result.profile ul");

        $("#bnr_upload_btn").on("click", function (e) { //업로드 버튼을 눌렀을 때 이벤트를 연결한다.
            e.preventDefault();
            var formData = new FormData();
            var inputFile = $("input[name='upload_bnr']");

            checkFileList(inputFile[0].files, formData);

            $.ajax({
                url: '/uploadAjaxAction',
                processData: false,
                contentType: false,
                data: formData,
                type: 'POST',
                dataType: "json",
                success: function (result) {
                    bnr_upload_list.append(showUploadedFile(result));
                    $(".upload-input.bnr").html(clone_bnr.html());
                }
            });
        });

        //uploadBtn2
        $("#profile_upload_btn").on("click", function (e) {
            e.preventDefault();
            var formData = new FormData();
            var inputFile = $("input[name='upload_profile']");

            checkFileList(inputFile[0].files, formData);

            $.ajax({
                url: '/uploadAjaxAction',
                processData: false,
                contentType: false,
                data: formData,
                type: 'POST',
                dataType: "json",
                success: function (result) {
                    profile_upload_list.append(showUploadedFile(result));
                    $(".upload-input.profile").html(clone_profile.html()); //파일 초기화
                }
            });
        });

        //가입하기 버튼
        $(".reg-confirm").click(function (e) {
            e.preventDefault();

            // let email_ref = $("#email");
            // let email_chk_btn = $("#email_duplicate_chk");
            //
            // if(!validateEmailAlert(email_ref, email_chk_btn)) return false; //이메일 검사
            //
            // let cpnm_ref = $("#cpnm");
            //
            // if (cpnm_ref.val() == "" ) {
            //     alert("브랜드명을 입력해 주세요");
            //     cpnm_ref.focus();
            //     return false;
            // }
            //
            // if (!nick_reg.test(cpnm_ref.val())) {
            //     alert("브랜드명은 2-16자 사이의 영문, 숫자, 한글(초성제외)로 입력해주세요");
            //     cpnm_ref.focus();
            //     return false;
            // }
            //
            // if (!$("#cpnm_duplicate_chk").is(":disabled")) {
            //     alert("브랜드명 중복 검사를 해주세요");
            //     cpnm_ref.focus();
            //     return false;
            // }
            //
            // let name_ref = $("#repr_nm");
            //
            // if (name_ref.val() == "") {
            //     alert("대표의 이름을 입력해 주세요");
            //     name_ref.focus();
            //     return false;
            // }
            //
            // if (name_ref.val().length > 20) {
            //     alert("대표의 이름은 20자 미만으로 입력해 주세요");
            //     name_ref.focus();
            //     return false;
            // }
            //
            // let pwd_ref = $("#pwd");
            // if(!validatePwdAlert(pwd_ref)) return false; //비번 검사
            //
            // let pwd_confirm_ref = $("#pwd_confirm");
            // if(!validatePwdConfirmAlert(pwd_ref, pwd_confirm_ref)) return false;
            //
            // let mpno_ref = $("#mpno");
            // let mpno_chk_btn = $("#mpno_chk");
            // if(!validateMpnoAlert(mpno_ref,mpno_chk_btn)) return false;
            //
            // let brno_ref = $("#brno");
            // let brno_chk_btn = $("#brno_chk");
            //
            // if (!validateBrnoAlert(brno_ref)) return false;
            //
            // if (!brno_chk_btn.is(":disabled")) {
            //     alert("사업자 인증을 해 주세요");
            //     brno_ref.focus();
            //     return false;
            // }


            let form = $("#seller_register");

            let bnr_path = $(".upload-result.bnr ul li").data("upload-path");
            let profile_path = $(".upload-result.profile ul li").data("upload-path");

            let files = "<input type='hidden' name='brnd_bnr_upload_path' value=" + bnr_path + ">" +
                "<input type='hidden' name='brnd_upload_path' value=" + profile_path + ">";

            form.append(files); //form에 업로드 파일 정보 추가

            form.submit();

        });

    });
</script>
</body>
</html>
