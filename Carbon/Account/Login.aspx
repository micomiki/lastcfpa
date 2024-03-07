<%@ Page Title="CFTA" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Carbon.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <header>
        <link href="assets/css/style.css" rel="stylesheet" />
        <style>
            /* Custom CSS for background image */
            body {
                background-image: url('../assets/img/slide/slide-1.jpg');
                background-size: cover;
                background-position: center;
                background-attachment: fixed;
            }

            /* Additional styles for the login form container */
            .container-fluid {
                background-color: rgba(47, 79, 79, 0.8);
                border-radius: 10px;
                padding: 30px;
                margin-top: 150px;
                height: 500px;
                width: 1000px;

            }

            /* Additional styles for the login form content */
            .divider {
                text-align: center;
                
            }

            .form-outline {
                margin-bottom: 1.5rem; /* Adjust spacing as needed */
                
            }

            .text-lg-start {
                text-align: left !important;
            }
            .login-custom {
              color:white;
            }
            .login-cust {
            margin-top: 0.5px;
            }
            .red {
    color: red;
    font-weight: bold;
}
        </style>
    </header>
    
    <div class="container-fluid ">
        <div class="row d-flex justify-content-center align-items-center  login-cust">
            
            <div class="col-md-9 col-lg-6 col-xl-5">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp" class="img-fluid" alt="Sample image" />
            </div>
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                <div class="divider d-flex align-items-center my-4">
                    <p class="text-center fw-bold mx-5 display-6 login-custom">Login</p>
                </div>
                <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                    <p class="red">
                        <asp:Literal runat="server" ID="FailureText" />
                    </p>
                </asp:PlaceHolder>
                <!-- Email input -->
                <div class="form-outline mb-4">
                    <asp:TextBox ID="Email" runat="server" CssClass="form-control form-control-lg" placeholder="Enter a valid email address" />
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="Email" CssClass="red" ErrorMessage="The email field is required." />
                </div>
                <!-- Password input -->
                <div class="form-outline mb-3">
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control form-control-lg" placeholder="Enter password" />
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="Password" CssClass="red" ErrorMessage="The password field is required." />
                </div>
                <div class="d-flex justify-content-between align-items-center">
                    <!-- Checkbox -->
                    <div class="form-check mb-0">
                        <asp:CheckBox ID="RememberMe" runat="server" CssClass="form-check-input me-2" />
                        <label class="form-check-label" for="chkRememberMe" style="color:white">Remember me</label>
                    </div>
                </div>
                <div class="text-center text-lg-start mt-4 pt-2">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary btn-lg" OnClick="LogIn" />
                    <p>
                        <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled" style="color:white">Register as a new user</asp:HyperLink>
                    </p>
                </div>
            </div>
            
        </div>
    </div>
</asp:Content>
