<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Gourmet Traditional Restaurant | Portfolio</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/prettyPhoto.css">
<script src="js/jquery-3.6.1.min.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/jquery.easing.1.3.js"></script>

</head>
<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	System.out.println(info.getMemAddr());
%>
<body>
<div class="main">
  <header>
    <div class="container_12">
      <div class="grid_12">
        <h1><a href="index.html"><img src="images/logo.png" alt=""></a></h1>
        <div class="menu_block">
          <nav>
            <ul class="sf-menu">
              <li><a href="index.html">Home</a></li>
              <li><a href="about-us.html">About Us</a>
                <ul>
                  <li><a href="#"> cuisine</a></li>
                  <li><a href="#">Good rest</a></li>
                  <li><a href="#">Services</a></li>
                </ul>
              </li>
              <li><a href="menu.html">Menu</a></li>
              <li class="current"><a href="portfolio.html">Portfolio</a></li>
              <li><a href="news.html">News</a></li>
              <li><a href="contacts.html">Contacts</a></li>
            </ul>
          </nav>
          <div class="clear"></div>
        </div>
        <div class="clear"></div>
      </div>
    </div>
  </header>
  <div class="content">
    <!-- ���� ���� -->
    <div class="container_12">
        <div class="grid_3">
            <h2 class="head2">������ ���</h2>
            <ul class="list l1">
                <li><a href="#">�޺��� ������</a></li>
                <li><a href="#">�츮���� ����1��</a></li>
                <li><a href="#">�������������뱹 ���ϵ�</a></li>
                <li><a href="#">������������ ��浿</a></li>
                <li><a href="#">�谡�� ÷��1��</a></li>
            </ul>
        </div>
        <div id="map" style="width:700px;height:500px;"></div>
        <script src="./js/jquery-3.6.1.min.js"></script>
        <script type="text/javascript"
            src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b1e1365d26517c250086a71d91902fcd&libraries=services"></script>

        <script>
            
            $(function () {
                function getMap() {
                    $.ajax({
                    	url : "SelectRestList",
                        success: function (jsonData) {
                            const obj = JSON.parse(jsonData);
                            let addressList = restInfo(obj);
                            createMap(addressList);
                        }
                    });
                };

                getMap();
                function restInfo(restaurant) {
                    let list = [];
                    // for �ݺ����� ���� �� ?
                    for (let i = 0; i < restaurant.length; i++) {
                        list.push({
                            "restNm": restaurant[i].restName,
                            "restCate": restaurant[i].cateName,
                            "restAdd": restaurant[i].restAddr
                        });
                    }
                    return list;
                }

                function createMap(addressList) {
                    let mapContainer = document.getElementById('map'), // ������ ǥ���� div 
                        mapOption = {
                            center: new kakao.maps.LatLng(35.1904480847838, 126.812984611101), // ������ �߽���ǥ
                            level: 5 // ������ Ȯ�� ����
                        };

                    let map = new kakao.maps.Map(mapContainer, mapOption);
                    let geocoder = new kakao.maps.services.Geocoder();
                    let overlayList = [];

                    function info(result, status, restNm, restCate, restAdd) {
                        return function (result, status) {
                            if (status === kakao.maps.services.Status.OK) {
                                let coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                                // ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�
                                let marker = new kakao.maps.Marker({
                                    map: map,
                                    position: coords
                                });

                                // ��Ŀ ���� Ŀ���ҿ������̸� ǥ���մϴ�
                                // ��Ŀ�� �߽����� Ŀ���� �������̸� ǥ���ϱ����� CSS�� �̿��� ��ġ�� �����߽��ϴ�
                                let overlay = new kakao.maps.CustomOverlay({
                                    // content: content,
                                    // map: map,
                                    position: marker.getPosition()
                                });

                                //overlay��ü�� content �߰��ϴ� �Լ�
                                overlay.setContent(createOverlayContent(overlay, restNm, restAdd, restCate));

                                // ��Ŀ�� Ŭ������ �� Ŀ���� �������̸� ǥ���մϴ�
                                kakao.maps.event.addListener(marker, 'click', mouseClickEventHandler(map, overlay));

                                overlayList.push(overlay);

                                // ������ �߽��� ��������� ���� ��ġ�� �̵���ŵ�ϴ�
                                // map.setCenter(coords);

                            }
                        }
                    }
                    for (let i = 0; i < addressList.length; i++) {
                        let restNm = addressList[i].restNm;
                        let restCate = addressList[i].restCate;
                        let restAdd = addressList[i].restAdd;

                        // �ּҷ� ��ǥ�� �˻��մϴ�
                        geocoder.addressSearch(restAdd, info(null, null, restNm, restCate, restAdd));
                    }
                }


                //��Ŀ�� �������̸� ���� �� �ݱ��ư �̺�Ʈ�� �����ϴ� �Լ�
                //���������� ������ �����ϰų� �������� ���� Ŭ�������� �߰��Ϸ��� �� �Լ� ������ �����ؾ� ��
                const createOverlayContent = function (overlay, restNm, restAdd, restCate) {

                    // HTML��ü�� ���� : document.createElement(�±��̸�)
                    // HTML��ü Ŭ�����̸� ���� : document.createElement(�±��̸�).className = �߰��� Ŭ�����̸�
                    // HTML��ü�� �ڽĿ�ҷ� �߰� : �θ�HTML��ü.appendChild(�ڽ�HTML��ü)
                    // HTML��ü ��Ÿ�� ���� : HTML��ü.style.��Ÿ�ϼӼ� = �� ( * ũ�Ⱚ�� �� ��� �ݵ�� 'px'�� 'em' ������ �ۼ��ؾ� �� )
                    const divWrap = document.createElement("div");
                    divWrap.className = "wrap";

                    const divInfo = document.createElement("div");
                    divInfo.className = "info";

                    const divTitle = document.createElement("div");
                    divTitle.className = "title";
                    divTitle.textContent = restNm;

                    const divClose = document.createElement("div");
                    divClose.className = "close";
                    divClose.setAttribute("title", "�ݱ�");
                    divClose.addEventListener("click", function () {
                        overlay.setMap(null);
                    });

                    const divBody = document.createElement("div");
                    divBody.className = "body";

                    const divEllipsis = document.createElement("div");
                    divEllipsis.className = "ellipsis";
                    divEllipsis.textContent = restAdd;

                    const divJibun = document.createElement("div");
                    divJibun.className = "jibun ellipsis";
                    divJibun.textContent = restCate;

                    //������ HTML��ü�� �ϳ��� �ڽĿ�ҷ� �߰�
                    divTitle.appendChild(divClose);
                    divBody.appendChild(divEllipsis);
                    divBody.appendChild(divJibun);
                    divInfo.appendChild(divTitle);
                    divInfo.appendChild(divBody);
                    divWrap.appendChild(divInfo);

                    return divWrap;

                }

                const mouseClickEventHandler = function (map, overlay) {
                    return function () {
                        overlay.setMap(map);
                    }
                }

            });

        </script>
    </div>
  </div>
</div>
<footer>
  <div class="container_12">
    <div class="grid_12"> Gourmet Traditional Restaurant &copy; 2045 | <a href="#">Privacy Policy</a> | Design by: <a href="http://www.templatemonster.com/">TemplateMonster.com</a> </div>
    <div class="clear"></div>
  </div>
</footer>
</body>
</html>