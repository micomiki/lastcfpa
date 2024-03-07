<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_Default.aspx.cs" Inherits="Carbon._Default" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server" />
        <!-- Hero Section -->
        <section id="hero" runat="server">
            <div class="hero-container">
                <div id="heroCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">
                    <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>
                    <div class="carousel-inner" role="listbox">
                        <!-- Slide 1 -->
                        <div class="carousel-item active" style="background-image: url(assets/img/slide/slide-1.jpg);">
                            <div class="carousel-container">
                                <div class="carousel-content">
                                    <h2 class="animate__animated animate__fadeInDown">Carbon Footprint Tracker Application</h2>
                                    <h3 class="animate__animated animate__fadeInDown">What Is Carbon Footprint?</h3>
                                    <p class="animate__animated animate__fadeInUp">A carbon footprint represents the total greenhouse gas emissions produced by an individual, organization, or product. This measurement encompasses all direct and indirect emissions associated with activities such as energy consumption, transportation, and production processes.</p>
                                    <asp:Button ID="btnGetStarted" runat="server" Text="Login" CssClass="btn-get-started animate__animated animate__fadeInUp scrollto" OnClick="btnGetStarted_Click" />
                                </div>
                            </div>
                        </div>
                        <!-- Slide 2 -->
                        <div class="carousel-item" style="background-image: url(assets/img/slide/slide-1.jpg);">
                            <div class="carousel-container">
                                <div class="carousel-content">
                                    <h2 class="animate__animated animate__fadeInDown">Why tracking carbon emissions matter for the organization?</h2>

                                    <div class="row">
                                        <!-- Reason 1 -->
                                        <div class="col-lg-4 col-md-6">
                                            <div class="carousel-reason">
                                                <h3>Reduce Environmental Impact</h3>
                                                <p>Tracking carbon emissions helps reduce environmental impact by identifying areas where emissions can be reduced or offset.</p>
                                            </div>
                                        </div>
                                        <!-- Reason 2 -->
                                        <div class="col-lg-4 col-md-6">
                                            <div class="carousel-reason">
                                                <h3>Comply with Regulations</h3>
                                                <p>Monitoring carbon emissions ensures compliance with environmental regulations and standards set by authorities.</p>
                                            </div>
                                        </div>
                                        <!-- Reason 3 -->
                                        <div class="col-lg-4 col-md-6">
                                            <div class="carousel-reason">
                                                <h3>Enhance Brand Reputation</h3>
                                                <p>Companies that track and reduce their carbon footprint demonstrate environmental responsibility, enhancing brand reputation.</p>
                                            </div>
                                        </div>
                                        <!-- Add more reasons as needed -->
                                    </div>
                                    <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn-get-started animate__animated animate__fadeInUp scrollto" OnClick="btnGetStarted_Click" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon bi bi-chevron-double-left" aria-hidden="true"></span>
                    </a>

                    <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
                        <span class="carousel-control-next-icon bi bi-chevron-double-right" aria-hidden="true"></span>
                    </a>

                </div>
            </div>
        </section>
        <!-- End Hero -->

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
