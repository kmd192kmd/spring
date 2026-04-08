<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
    <style>
        #map {
            width: 770px;
            height: 500px;
        }
    </style>
</head>
<body>
    <!-- map02.jsp -->
    <h1>Kakao Map <small>좌표 이동 / 레벨 변경</small></h1>
    
    <div>
        <div id="map"></div>
    </div>
    <hr>
    <div>
        <input type="button" value="쌍용교육센터로 이동하기" id="btn1">
        <input type="button" value="선릉역 1번 출구로 이동하기" id="btn2">
        <input type="button" value="석촌호수로 이동하기" id="btn3">
    </div>
    <hr>
    <div>
        <input type="button" value="확대하기" id="btn4">
        <input type="button" value="축소하기" id="btn5">
    </div>
    
    <script src="https://code.jquery.com/jquery-4.0.0.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bc11f2c1d9ac19ad396b5861eb348a12"></script>
    <script src="https://bit.ly/4cMuheh"></script>
    <script>
    
        var container = document.getElementById('map');
        
        var options = {
            center: new kakao.maps.LatLng(37.504742, 127.053156),
            level: 3
        };
    
        var map = new kakao.maps.Map(container, options);
        
        map.setDraggable(false);
        map.setZoomable(false);
        
        $('#btn1').click(()=>{
        	const pos = new kakao.maps.LatLng(37.504742, 127.053156);
        	//map.setCenter(pos);
        	map.panTo(pos);
        });
        $('#btn2').click(()=>{
            const pos = new kakao.maps.LatLng(37.504587, 127.050095);
            //map.setCenter(pos);
            map.panTo(pos);
        });
        $('#btn3').click(()=>{
            const pos = new kakao.maps.LatLng(37.508818, 127.100117);
            //map.setCenter(pos);
            map.panTo(pos);
        });
        $('#btn4').click(()=>{
            //map.setLevel(1);
            map.setLevel(map.getLevel() - 1);
        });
        $('#btn5').click(()=>{
            //map.setLevel(14);
        	map.setLevel(map.getLevel() + 1);
        });
        
    
    </script>
</body>
</html>




