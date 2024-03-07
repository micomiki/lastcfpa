<%@ Page Title="Manage Password" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManagePassword.aspx.cs" Inherits="Carbon.Account.ManagePassword" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="assets/css/style.css" rel="stylesheet" />

        <style>
            /* Custom CSS for background image */
            body {
                background-image: url('../assets/img/slide/slide-1.jpg');
                background-size: cover;
                background-position: center;
                background-attachment: fixed;
                color: #fff; /* Text color */
            }

            /* Additional styles for the container */
            .container-fluid {
                background-color: rgba(47, 79, 79, 0.8);
                border-radius: 10px;
                padding: 30px;
                margin-top: 150px;
                height: 530px;
                width: 1200px;
            }

            /* Additional styles for the form content */
            .divider {
                text-align: center;
            }

            .form-outline {
                margin-bottom: 1.5rem; /* Adjust spacing as needed */
            }

            .text-lg-start {
                text-align: left !important;
            }
                        .red {
    color: red;
    font-weight: bold;
}
        </style>
    </header>
    
    <main aria-labelledby="title" class="container-fluid">
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-md-8 col-lg-5 col-xl-4">
                <!-- Container image from the login page -->
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp" class="img-fluid" alt="Sample image" />
            </div>
            <div class="col-md-9 col-lg-7 col-xl-5 offset-xl-1">
                <div class="divider d-flex align-items-center my-4">
                    <p class="text-center fw-bold mx-5 display-6">Manage Password</p>
                </div>
                <asp:PlaceHolder runat="server" ID="setPassword" Visible="false">
                    <p>
                        You do not have a local password for this site. Add a local password so you can log in without an external login.
                    </p>
                    <div>
                        <h4>Set Password Form</h4>
                        <asp:ValidationSummary runat="server" ShowModelStateErrors="true" CssClass="red" />
                        <hr />
                        <div class="row">
                            <asp:Label runat="server" AssociatedControlID="password" CssClass="col-md-2 col-form-label">Password</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="password" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="password"
                                    CssClass="red" ErrorMessage="The password field is required."
                                    Display="Dynamic" ValidationGroup="SetPassword" />
                                <asp:ModelErrorMessage runat="server" ModelStateKey="NewPassword" AssociatedControlID="password"
                                    CssClass="red" SetFocusOnError="true" />
                            </div>
                        </div>

                        <div class="row">
                            <asp:Label runat="server" AssociatedControlID="confirmPassword" CssClass="col-md-2 col-form-label">Confirm password</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="confirmPassword" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="confirmPassword"
                                    CssClass="red" Display="Dynamic" ErrorMessage="The confirm password field is required."
                                    ValidationGroup="SetPassword" />
                                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="confirmPassword"
                                    CssClass="red" Display="Dynamic" ErrorMessage="The password and confirmation password do not match."
                                    ValidationGroup="SetPassword" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="offset-md-2 col-md-10">
                                <asp:Button runat="server" Text="Set Password" ValidationGroup="SetPassword" OnClick="SetPassword_Click" CssClass="btn btn-outline-dark" />
                            </div>
                        </div>
                    </div>
                </asp:PlaceHolder>

                <asp:PlaceHolder runat="server" ID="changePasswordHolder" Visible="false">
                    <div>
                        <h4>Change Password Form</h4>
                        <hr />
                        <asp:ValidationSummary runat="server" ShowModelStateErrors="true" CssClass="red" />
                        <div class="row">
                            <asp:Label runat="server" ID="CurrentPasswordLabel" AssociatedControlID="CurrentPassword" CssClass="col-md-2 col-form-label">Current password</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="CurrentPassword" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="CurrentPassword"
                                    CssClass="red" ErrorMessage="The current password field is required."
                                    ValidationGroup="ChangePassword" />
                            </div>
                        </div>
                        <div class="row">
                            <asp:Label runat="server" ID="NewPasswordLabel" AssociatedControlID="NewPassword" CssClass="col-md-2 col-form-label">New password</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="NewPassword" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="NewPassword"
                                    CssClass="red" ErrorMessage="The new password is required."
                                    ValidationGroup="ChangePassword" />
                            </div>
                        </div>
                        <div class="row">
                            <asp:Label runat="server" ID="ConfirmNewPasswordLabel" AssociatedControlID="ConfirmNewPassword" CssClass="col-md-2 col-form-label">Confirm new password</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="ConfirmNewPassword" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmNewPassword"
                                    CssClass="red" Display="Dynamic" ErrorMessage="Confirm new password is required."
                                    ValidationGroup="ChangePassword" />
                                <asp:CompareValidator runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword"
                                    CssClass="red" Display="Dynamic" ErrorMessage="The new password and confirmation password do not match."
                                    ValidationGroup="ChangePassword" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="offset-md-2 col-md-10">
                                <asp:Button runat="server" Text="Change Password" ValidationGroup="ChangePassword" OnClick="ChangePassword_Click" CssClass="btn btn-primary" />
                            </div>
                        </div>
                    </div>
                </asp:PlaceHolder>
            </div>
        </div>
    </main>
</asp:Content>
