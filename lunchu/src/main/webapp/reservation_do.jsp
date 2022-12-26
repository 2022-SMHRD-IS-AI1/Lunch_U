<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!-- Simple Line Icons -->
    <link rel="stylesheet" href="css/simple-line-icons.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="css/bootstrap.css">

    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="images/favicon.ico">
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/slider.css">
    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.1.1.js"></script>
    <script src="js/superfish.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/sForm.js"></script>
    <script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>
    <script src="js/tms-0.4.1.js"></script>
    <script>
        const btn_btn_primary = document.getElementsByClassName("btn btn-primary");

        function doPopupopen() {
            window.open("pay_1.jsp", 'popup', 'width=#fieldset, height=#fieldset, scrollbars= 0, toolbar=0, menubar=no');
        }

        btn_btn_primary.addEventListener("click", doPopupopen);
    </script>

</head>

<body>
    <div class="main">
        <header>
            <div class="container_12">
                <div class="grid_12">
                    <h1>
                        <a href="index.html"><img src="images/logo_lunchu1.png" alt=""></a>
                    </h1>
                    <div class="menu_block">
                        <nav>
                            <ul class="sf-menu">
                                <li><a href="LogoutService">로그아웃</a></li>
                                <li class="with_ul"><a href="#">마이페이지</a>
                                    <ul>
                                        <li><a href="profile.jsp"> 내 정보</a></li>
                                        <li><a href="reservation.jsp"> 내 예약</a></li>
                                        <li><a href="reviews.jsp"> 내 리뷰 </a></li>
                                        <li><a href="groups.jsp"> 내 그룹</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </header>
        <div class="content page1">
            <div class="container_12">
                <div class="grid_12">
                    <div id="fh5co-contact" data-section="reservation">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 to-animate-2">
                                    <img src="images/bank_logo/우체국.jfif" alt="이미지 준비중..">
                                    <img src="images/bank_logo/우체국.jfif" alt="이미지 준비중..">
                                    <img src="images/bank_logo/우체국.jfif" alt="이미지 준비중..">
                                    <img src="images/bank_logo/우체국.jfif" alt="이미지 준비중..">
                                </div>
                                <div class="col-md-6 to-animate-2">
                                    <h3>Reservation Form</h3>
                                    <div class="form-group">
                                        <label for="name" class="sr-only">Name</label>
                                        <input id="name" class="form-control" placeholder="이름" type="text">
                                    </div>
                                    <div class="form-group ">
                                        <label for="email" class="sr-only">연락처 ( - 를 빼고 입력해주세요. )</label>
                                        <input id="email" class="form-control" placeholder="연락처 ( - 를 빼고 입력해주세요. )"
                                            type="email">
                                    </div>

                                    <div class="form-group ">
                                        <label for="date" class="sr-only">Date</label>
                                        <input id="date" class="form-control" placeholder="date" type="date">
                                    </div>
                                    <div class="form-group">
                                        <label for="occation" class="sr-only">Occation</label>
                                        <select class="form-control" id="select_time">
                                            <option>11:30</option>
                                            <option>12:00</option>
                                            <option>12:30</option>
                                            <option>13:00</option>
                                        </select>
                                    </div>
                                    <div class="form-group ">
                                        <label for="message" class="sr-only">사장님께 요청사항</label>
                                        <textarea name="" id="message" cols="30" rows="5" class="form-control"
                                            placeholder="사장님께 요청사항"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <input class="btn btn-primary" value="예약하기" type="submit"
                                            onclick="doPopupopen()">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer>
            <div class="container_12">
                <div class="grid_12">스마트인재개발원 Team Lunch_U</div>
                <div class="clear"></div>
            </div>
        </footer>
</body>

</html>