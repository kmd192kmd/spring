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
    <!-- map01.jsp -->
    <h1>Kakao Map</h1>
    
    <div>
        <div id="map"></div>
    </div>
    
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c16567bd9d988a03c7403e065be597e6"></script>
    <script src="https://bit.ly/4cMuheh"></script>
    <script>
    
        var container = document.getElementById('map');
        
        var options = {
            center: new kakao.maps.LatLng(37.504916, 127.053183),
            level: 3
        };
    
        var map = new kakao.maps.Map(container, options);
    
    </script>
</body>
</html>