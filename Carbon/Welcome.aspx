<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Carbon.Welcome" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head >
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>CFTA</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet" />
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet" />
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet" />
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />


    <style>
        /* Custom CSS for background image and blur effect */
        .container-custom {
            background-color: rgba(255, 255, 255, 0.8); /* Adjust the opacity as needed */
            border-radius: 10px;
            padding: 10px;
            margin-top: 20px;
            margin-bottom: 50px;
            height: 700px;
        }

        /* Override blur effect for container */
        .container-custom {
            filter: none;
        }
         P.lead, li {
            font-weight: 500;
        }
       
    </style>
</head>
<body>
    <form id="form1">
        <div class="container container-custom">
            <div class="row justify-content-center align-items-center h-100">
                <div class="col-lg-8 text-center">
                    <h1 class="mb-4">Welcome to Carbon Footprint Tracker Application</h1>
                    <p class="lead mb">This application helps you track and manage your carbon footprint, contributing to a greener environment.</p>
                    <p class="lead">Here are some advantages of using our application:</p>
                    <ul class="lead text-left">
                        <li>Monitor and reduce your environmental impact</li>
                        <li>Comply with environmental regulations and standards</li>
                        <li>Enhance your brand reputation as an environmentally responsible organization</li>
                    </ul>
                    <a href="DataEntry.aspx" class="btn btn-primary btn-lg mt-3" >Get Started</a>
                </div>
            </div>
        </div>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>
       <script>
         

           $(document).ready(function () {
               // Function to handle click on navigation item
               localStorage.clear();

               
               
           });
       </script>
    </form>
</body>
</html>
</asp:Content>
