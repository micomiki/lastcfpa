<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Carbon.Account.Register" %>

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
            .rgbtn {
              margin-top:50px;
            }
                       .red {
    color: red;
    font-weight: bold;
}
        </style>
    </header>

    <main aria-labelledby="title">
        <div class="container-fluid">
            <p class="red">
                <asp:Literal runat="server" ID="ErrorMessage" />
            </p>
            <div class="row">
                <div class="col-md-6">
                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp" class="img-fluid" alt="Sample image" />
                </div>
                <div class="col-md-6">
                    <h4 class="login-custom">Create a new account</h4>
                    <hr />
                    <asp:ValidationSummary runat="server" CssClass="red" />
                    <div class="row">
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 col-form-label login-custom" >Email</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="red" ErrorMessage="The email field is required." />
                        </div>
                    </div>
                    <div class="row">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 col-form-label login-custom">Password</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                CssClass="red" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div class="row">
                        <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 col-form-label login-custom" >Confirm password</asp:Label>
                        <div class="col-md-10 cfmpasd">
                            <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                CssClass="red" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                            <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                CssClass="red" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                        </div>
                    </div>
                    <div class="row">
                        <div class="offset-md-2 col-md-10">
                            <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-primary rgbtn" />
                       <p>
    <asp:HyperLink runat="server" ID="LoginHyperLink" ViewStateMode="Disabled" style="color:white">I have Account.</asp:HyperLink>
</p>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
