<%-- 
Document   : carrentanddetails
Created on : Jun 4, 2022, 3:16:47 PM
Author     : Aspire E 14
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Car Details - Car Rental</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/bootstrap.min.css">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/main-style.css">
    </head>
    <body>
        <!-- TOP NAVIGATION BAR -->
        <nav class="navbar navbar-expand-lg bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Car Rental</a>
                <button class="navbar-toggler tb-btn" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    -
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <%@include file="navbar.jsp" %>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- CONTENT -->
        <div class="kotak col-6 text-center pt-5 pb-5">
            <h1 class="mb-3">Car Details</h1>
            <div class="mb-3 row car-list">
                <form action="bookmyvi.jsp" method="post">
                    <p><strong>PERODUA MYVI</strong></p>
                    <div class="row">
                        <div class="col">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/5/5b/2013_Perodua_Myvi_1.3_SE_%28S-Series%29_in_Cyberjaya%2C_Malaysia_%2803%29.jpg" alt="PERODUA MYVI" class="img-car img-thumbnail">
                        </div>
                        <div class="col">
                            Car Type : Perodua Myvi AUTO <br><br/>
                            Car Number Plate : ABC1234 <br><br/>
                            Charge Per/Hour : RM7/1 hour <br><br/>
                            Capacity : 4 person <br><br/>
                            Status : Available until 2300 hours <br><br/>
                            <button type="submit" class="btn btn-light">BOOK NOW</button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="mb-3 row car-list">
                <form action="bookviva.jsp" method="post">
                    <p><strong>PERODUA VIVA</strong></p>
                    <div class="row">
                        <div class="col">
                            <img src="https://admin.lepaskunci.com.my/storage/vehicle/19/1656920654_WhatsApp%20Image%202022-06-27%20at%208.01.20%20PM.jpeg" alt="PERODUA VIVA" class="img-car img-thumbnail">
                        </div>
                        <div class="col">
                            Car Type : Perodua Viva AUTO <br><br/>
                            Car Number Plate : BCD7890 <br><br/>
                            Charge Per/Hour : RM7/1 hour <br><br/>
                            Capacity : 4 person <br><br/>
                            Status : Available until 2300 hours <br><br/>
                            <button type="submit" class="btn btn-light">BOOK NOW</button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="mb-3 row car-list">
                <form action="bookaxia.jsp" method="post">
                    <p><strong>PERODUA AXIA</strong></p>
                    <div class="row">
                        <div class="col">
                            <img src="https://paultan.org/image/2019/09/Perodua_Axia_FL_GXtra__GearUp_Malaysia-2-BM.jpg" alt="PERODUA AXIA" class="img-car img-thumbnail">
                        </div>
                        <div class="col">
                            Car Type : Perodua Axia AUTO <br><br/>
                            Car Number Plate : TBG 8008 <br><br/>
                            Charge Per/Hour : RM7/1 hour <br><br/>
                            Capacity : 4 person <br><br/>
                            Status : Available until 2300 hours <br><br/>
                            <button type="submit" class="btn btn-light">BOOK NOW</button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="mb-3 row car-list">
                <form action="booksaga.jsp" method="post">
                    <p><strong>PROTON SAGA ISWARA </strong></p>
                    <div class="row">
                        <div class="col">
                            <img src="https://fichasmotor.com/images/proton/proton-saga-iswara-1-5i-90-cv.webp" alt="PROTON SAGA ISWARA" class="img-car img-thumbnail">
                        </div>
                        <div class="col">
                            Car Type : Proton Saga Iswara MANUAL <br><br/>
                            Car Number Plate : W 786 C <br><br/>
                            Charge Per/Hour : RM7/1 hour <br><br/>
                            Capacity : 5 person <br><br/>
                            Status : Available until 2300 hours <br><br/>
                            <button type="submit" class="btn btn-light">BOOK NOW</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!-- JavaScript -->
        <script src="<%= request.getContextPath()%>/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
